package macrogen.www.common.storage;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Calendar;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.net.util.Base64;
import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import egovframework.rte.fdl.cmmn.exception.BaseException;

@Service("storageService")
public class StorageServiceImpl implements StorageService {

	private static final Logger LOGGER = LoggerFactory.getLogger(StorageServiceImpl.class);

	@Value("${globals.atch.public.path}")
	private String atchPublicPath;

	@Value("${globals.atch.public.url}")
	private String atchPublicUrl;
	
	@Value("${globals.domain.www}")
	private String wwwDomain;

	@Override
	public StorageFile createFile(String baseDirName, MultipartFile multipartFile) throws Exception {
		if (multipartFile == null || multipartFile.isEmpty()) {
			throw new BaseException("MultiparFile object must be not null or not is empty.");
		}

		if (!StorageUtils.isUploadableFile(multipartFile.getOriginalFilename())) {
			throw new BaseException("Invalid Extension");
		}

		String relativePath = getAttachmentRelativePath();
		String extension = StringUtils.getFilenameExtension(multipartFile.getOriginalFilename());
		String uniqueFileName = StorageUtils.createUniqueFileName(extension);

		File absoluteDir = new File(baseDirName, relativePath);
		if (!absoluteDir.exists()) {
			if (!absoluteDir.mkdirs()) {
				throw new BaseException("Cannot create a directory '" + absoluteDir.getAbsolutePath() + "'");
			}
		}

		try {
			File outputFile = new File(absoluteDir, uniqueFileName);
			multipartFile.transferTo(outputFile);

			// 이미지파일일 경우, create thumbnail images (middle/small size, 가로이미지여부 확인)
			ImageVo imageVo = null;
			try {
				imageVo = getImageInfo(outputFile);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}

			if (null != imageVo) {
				return new StorageFile(uniqueFileName, multipartFile.getOriginalFilename(), relativePath, outputFile.length(), extension
						, imageVo.getThumbFlpth(), imageVo.getWidth(), imageVo.getHeight());
			} else {
				return new StorageFile(uniqueFileName, multipartFile.getOriginalFilename(), relativePath, outputFile.length(), extension);
			}

		} catch (IOException e) {
			throw new BaseException("IOException Occured", e);
		}
	}

	private ImageVo getImageInfo(File outputFile) throws Exception {
		ImageVo image = new ImageVo();
		BufferedImage bi = ImageIO.read(outputFile);
		image.setWidth(bi.getWidth());
		image.setHeight(bi.getHeight());
		return image;
	}

	@Override
	public StorageFile createImageFileFromUrl(String baseDirName, String mapImgUrl, String extension) throws Exception {
		String relativePath = getAttachmentRelativePath();
		String uniqueFileName = StorageUtils.createUniqueFileName(extension);

		File absoluteDir = new File(baseDirName, relativePath);
		if (!absoluteDir.exists()) {
			if (!absoluteDir.mkdirs()) {
				throw new BaseException("Cannot create a directory '" + absoluteDir.getAbsolutePath() + "'");
			}
		}

		try {
			BufferedImage bufferedImage = ImageIO.read(new URL(mapImgUrl));
			File outputFile = new File(absoluteDir, uniqueFileName);
			ImageIO.write(bufferedImage, extension, outputFile);

			return new StorageFile(uniqueFileName, "", relativePath, outputFile.length(), extension);
		} catch (IOException e) {
			throw new BaseException("IOException Occured", e);
		}
	}

	private static final String getAttachmentRelativePath() {
		Calendar cal = Calendar.getInstance();

		StringBuilder builder = new StringBuilder();
		builder.append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);
		builder.append(cal.get(Calendar.YEAR)).append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);
		builder.append(StorageUtils.MONTH_NAMES[cal.get(Calendar.MONTH)]).append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);
		builder.append(cal.get(Calendar.DAY_OF_MONTH)).append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);
		builder.append(cal.get(Calendar.HOUR_OF_DAY)).append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);
		builder.append(cal.get(Calendar.MINUTE)).append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);
		builder.append(cal.get(Calendar.SECOND)).append(StorageUtils.UNIVERSAL_FILE_SEPARATOR);

		return builder.toString();
	}

	@Override
	public void downloadFile(String filePath, String saveAsName,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		File file = new File(filePath);
		long filesize = file.length();
		if (filesize > 0) {
			if("sign.png".equals(saveAsName)) {
				response.setContentType("image/png");
			} else {
				response.setContentType("application/x-msdownload");
			}
			response.setContentLength((int) filesize);
			setDisposition(StringUtils.getFilename(saveAsName), request, response);

			BufferedInputStream in = null;
			BufferedOutputStream out = null;

			try{
				in = new BufferedInputStream(new FileInputStream(file));
				out  = new BufferedOutputStream(response.getOutputStream());

				FileCopyUtils.copy(in, out);
				out.flush();
			} catch (Exception ex) {
				LOGGER.debug("IGNORED: {}", ex.getMessage());
			} finally {
				if (in != null) {
					try {
					    in.close();
					} catch (Exception ignore) {
						LOGGER.debug("IGNORED: {}", ignore.getMessage());
					}
				}
				if (out != null) {
					try {
						out.close();
					} catch (Exception ignore) {
						LOGGER.debug("IGNORED: {}", ignore.getMessage());
					}
				}
			}
		} else {
//			response.setStatus(999);
//			response.sendError(999,"No file");
//			throw new Exception("NO_FILE");
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");

			PrintWriter printwriter = response.getWriter();
			printwriter.println("<html>");
			printwriter.println("<script>alert('File Not Found');history.go(-1);</script>");
			printwriter.println("</html>");
			printwriter.flush();
			printwriter.close();
		}
	}

	private void setDisposition(String saveAsName,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		String browser = getBrowser(request);

		String dispositionPrefix = "attachment; filename=";
		String encodedFilename = null;

		if (browser.equals("MSIE")) {
			encodedFilename = URLEncoder.encode(saveAsName, "UTF-8").replaceAll("\\+", "%20");
		} else if (browser.equals("Trident")) {		// IE11 문자열 깨짐 방지
			encodedFilename = URLEncoder.encode(saveAsName, "UTF-8").replaceAll("\\+", "%20");
		} else if (browser.equals("Firefox")) {
			encodedFilename = "\"" + new String(saveAsName.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Opera")) {
			encodedFilename = "\"" + new String(saveAsName.getBytes("UTF-8"), "8859_1") + "\"";
		} else if (browser.equals("Chrome")) {
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < saveAsName.length(); i++) {
				char c = saveAsName.charAt(i);
				if (c > '~') {
					sb.append(URLEncoder.encode("" + c, "UTF-8"));
				} else {
					sb.append(c);
				}
			}
			encodedFilename = sb.toString();
		} else {
			throw new IOException("Not supported browser");
		}

		response.setHeader("Content-Disposition", dispositionPrefix + encodedFilename);

		if ("Opera".equals(browser)){
			response.setContentType("application/octet-stream;charset=UTF-8");
		}
	}

	private String getBrowser(HttpServletRequest request) {
		String header = request.getHeader("User-Agent");
        if (header.indexOf("MSIE") > -1) {
            return "MSIE";
        } else if (header.indexOf("Trident") > -1) {	// IE11 문자열 깨짐 방지
            return "Trident";
        } else if (header.indexOf("Chrome") > -1) {
            return "Chrome";
        } else if (header.indexOf("Opera") > -1) {
            return "Opera";
        }
        return "Firefox";
	}

	@Override
	public StorageFile createImageBytes(String baseDirName, String byteString) throws Exception {

		FileOutputStream fos = null;

		byte[] contentData = byteString.getBytes();
		byte[] decodedData = Base64.decodeBase64(contentData);

		String relativePath = getAttachmentRelativePath();
		String extension = "png";
		String uniqueFileName = StorageUtils.createUniqueFileName(extension);

		File absoluteDir = new File(baseDirName, relativePath);
		if (!absoluteDir.exists()) {
			if (!absoluteDir.mkdirs()) {
				throw new BaseException("Cannot create a directory '" + absoluteDir.getAbsolutePath() + "'");
			}
		}

		try {
			File outputFile = new File(absoluteDir, uniqueFileName);
			fos = new FileOutputStream(outputFile);
			fos.write(decodedData);

			// 이미지파일일 경우, create thumbnail images (middle/small size, 가로이미지여부 확인)
			ImageVo imageVo = null;
			try {
				imageVo = getImageInfo(outputFile);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}

			if (fos != null) {
				fos.close();
			}

			if (null != imageVo) {
				return new StorageFile(uniqueFileName, uniqueFileName, relativePath, outputFile.length(), extension
						, imageVo.getThumbFlpth(), imageVo.getWidth(), imageVo.getHeight());
			} else {
				return new StorageFile(uniqueFileName, uniqueFileName, relativePath, outputFile.length(), extension);
			}

		} catch (IOException e) {
			throw new BaseException("IOException Occured", e);
		}

	}

	@Override
	public String createThumbnailUrl(String imgUrl) throws Exception {
		try {
			if (StringUtils.isEmpty(imgUrl) || "".equals(imgUrl.trim())) {
				return null;
			}

			/**
			 * /public/product/thumb/20-PHANTOM-MICRO_DARK-BLUE_.png
			 * -> /public/product/thumb/20-PHANTOM-MICRO_DARK-BLUE_.thumb.png
			 * ->
			 */
			String extension = StringUtils.getFilenameExtension(imgUrl);
			String relativePath = StringUtils.stripFilenameExtension(imgUrl)
					.replaceFirst(atchPublicUrl, "") + ".thumbnail." + extension;
			String absolutePath = atchPublicPath + relativePath;

			File outputFile = new File(absolutePath);
//			String wwwDomain = "https://www.3000mall.co.kr";
			URL url = new URL(wwwDomain + imgUrl.replaceAll(" ", "%20"));
			BufferedImage bufferedImage = ImageIO.read(url);
			BufferedImage resized = bufferedImage;
			if (bufferedImage.getWidth() > 250) {
				resized = Scalr.resize(bufferedImage, 
						Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_WIDTH, 250);
			}
			
			ImageIO.write(resized, extension, outputFile);
			LOGGER.debug(outputFile.getAbsolutePath());
			return atchPublicUrl + relativePath;
		} catch (Exception e) {
			return null;
		}
	}

}

package macrogen.www.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import macrogen.www.common.storage.StorageFile;
import macrogen.www.common.storage.StorageService;
import macrogen.www.common.storage.StorageUtils;
import macrogen.www.exception.BaseException;
import macrogen.www.service.AtchService;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ UploadController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2018. 12. 7. 오후 2:06:44
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/upload")
public class UploadController {
	@Resource(name="storageService")
	private StorageService storageService;

	@Resource(name="atchService")
	private AtchService atchService;

	@Value("${globals.atch.public.path}")
	private String atchPublicPath;

	@Value("${globals.atch.private.path}")
	private String atchPrivatePath;

	@Value("${globals.atch.public.url}")
	private String atchPublicUrl;

	@Value("${globals.atch.maxImageSize}")
	private long maxImageSize;

	/**
	 * <pre>
	 * uploadImage
	 * 1. 개요   : 이미지 업로드
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param atchVo
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/image")
	@ResponseBody
	public Map<String, Object> uploadImage(@AuthenticationPrincipal MngrVo loginVo,
			AtchVo atchVo, HttpServletRequest request) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		try {
			// 첨부검사 : 확장자(이미지확장자), 사이즈,
			if (null == atchVo.getAtchFile() || atchVo.getAtchFile().isEmpty()) {
				throw new BaseException("INVALID_FILE");
			}
			if (!StorageUtils.isImageFile(atchVo.getAtchFile().getOriginalFilename())) {
				throw new BaseException("INVALID_EXTENSION");
			}
			if (atchVo.getAtchFile().getSize() > maxImageSize) {
				throw new BaseException("INVALID_MAX_SIZE");
			}

			StorageFile storageFile = storageService.createFile(atchPublicPath, atchVo.getAtchFile());
			AtchVo resultVo = new AtchVo(storageFile);
			resultVo.setRegisterSn(loginVo.getUserSn());
			resultVo.setUpdusrSn(loginVo.getUserSn());
			atchService.insert(resultVo);

			resultMap.put("result", "success");
			resultMap.put("resultVo", resultVo);

		} catch (Exception e) {
			resultMap.put("result", "fail");
			if ("INVALID_MAX_SIZE".equals(e.getMessage())) {
				resultMap.put("message", "업로드가능용량을 초과하였습니다.");
			} else if ("INVALID_EXTENSION".equals(e.getMessage())) {
				resultMap.put("message", "허용되지 않는 첨부파일 확장자 입니다.");
			} else {
				resultMap.put("message", "데이터 처리 도중 에러가 발생하였습니다.");
			}
		}

		return resultMap;
	}

	/**
	 * <pre>
	 * uploadFile
	 * 1. 개요   : 파일 업로드
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param atchVo
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/file")
	@ResponseBody
	public Map<String, Object> uploadFile(@AuthenticationPrincipal MngrVo loginVo,
			AtchVo atchVo, HttpServletRequest request) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		try {
			// 첨부검사 : 확장자(이미지확장자), 사이즈,
			if (null == atchVo.getAtchFile() || atchVo.getAtchFile().isEmpty()) {
				throw new BaseException("INVALID_FILE");
			}
			if (!StorageUtils.isUploadableFile(atchVo.getAtchFile().getOriginalFilename())) {
				throw new BaseException("INVALID_EXTENSION");
			}
			if (atchVo.getAtchFile().getSize() > maxImageSize) {
				throw new BaseException("INVALID_MAX_SIZE");
			}

			StorageFile storageFile = storageService.createFile(atchPrivatePath, atchVo.getAtchFile());
			AtchVo resultVo = new AtchVo(storageFile);
			resultVo.setRegisterSn(loginVo.getUserSn());
			resultVo.setUpdusrSn(loginVo.getUserSn());
			atchService.insert(resultVo);

			resultMap.put("resultVo", resultVo);
			resultMap.put("result", "success");

		} catch (Exception e) {
			resultMap.put("result", "fail");
			if ("INVALID_MAX_SIZE".equals(e.getMessage())) {
				resultMap.put("message", "업로드가능용량을 초과하였습니다.");
			} else if ("INVALID_EXTENSION".equals(e.getMessage())) {
				resultMap.put("message", "허용되지 않는 첨부파일 확장자 입니다.");
			} else {
				resultMap.put("message", "데이터 처리 도중 에러가 발생하였습니다.");
			}
		}

		return resultMap;
	}

	/**
	 * <pre>
	 * ck
	 * 1. 개요   : 웹 에디터 첨부 업로드
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param upload
	 * @param model
	 * @param response
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/ck")
	public String ck(MultipartFile upload, Model model,
			HttpServletResponse response, HttpServletRequest request) throws Exception {
		if (null != upload && !upload.isEmpty()) {
			// 첨부 체크 (용량, 확장자)
			if (upload.getSize() > maxImageSize) {
				model.addAttribute("result", "ERROR");
				model.addAttribute("msg", "MAX_SIZE");
				model.addAttribute("loc", "back");
				//throw new Exception("MAX_SIZE_EX");
				return "/upload/ck";
			}
			if (!StorageUtils.isImageFile(upload.getOriginalFilename())) {
				model.addAttribute("result", "ERROR");
				model.addAttribute("msg", "image file only");
				model.addAttribute("loc", "back");
				//throw new Exception("EXTENSION_EX");
				return "/upload/ck";
			}

			// 물리파일저장
			StorageFile storageFile = null;
			storageFile = storageService.createFile(atchPublicPath, upload);

			model.addAttribute("CKEditorFuncNum", request.getParameter("CKEditorFuncNum"));
			model.addAttribute("result", "OK");
			model.addAttribute("fileInfo", storageFile);
			model.addAttribute("fileUrl",
					atchPublicUrl + storageFile.getRelativePath() + storageFile.getName());

		} else {
			model.addAttribute("result", "ERROR");
			model.addAttribute("msg", "NO File");
			model.addAttribute("loc", "back");
		}
		return "/upload/ck";
	}


}

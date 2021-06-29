package macrogen.www.common.storage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

/**
 * <pre>
 * macrogen.www.common.storage
 *    |_ StorageService.java
 * 파일 처리
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:43:09
 * 2.작성자 : eluocnc
 * @version :
 */
public interface StorageService {

	/**
	 * <pre>
	 * createFile
	 * 1. 개요   : 업로드파일 저장
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param baseDirName
	 * @param multipartFile
	 * @return
	 * @throws Exception
	 */
	public StorageFile createFile(String baseDirName, MultipartFile multipartFile) throws Exception;

	/**
	 * <pre>
	 * createImageFileFromUrl
	 * 1. 개요   : 이미지URL로 부터 이미지 저장
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param baseDirName
	 * @param mapImgUrl
	 * @param extension
	 * @return
	 * @throws Exception
	 */
	public StorageFile createImageFileFromUrl(String baseDirName, String mapImgUrl, String extension) throws Exception;

	/**
	 * <pre>
	 * downloadFile
	 * 1. 개요   : 첨부파일 다운로드
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param filePath
	 * @param saveAsName
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	public void downloadFile(String filePath, String saveAsName, HttpServletRequest request, HttpServletResponse response) throws Exception;


	/**
	 * <pre>
	 * createImageBytes
	 * 1. 개요   : 캔버스 이미지 저장
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param baseDirName
	 * @param byteString
	 * @throws Exception
	 */
	public StorageFile createImageBytes(String baseDirName, String byteString) throws Exception;

	public String createThumbnailUrl(String imgUrl) throws Exception;
}

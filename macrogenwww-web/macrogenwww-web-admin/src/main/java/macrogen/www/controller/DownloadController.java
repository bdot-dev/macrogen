package macrogen.www.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.common.storage.StorageService;
import macrogen.www.exception.BaseException;
import macrogen.www.service.AtchService;
import macrogen.www.vo.AtchVo;

/**
 * <pre>
 * scbtob.controller
 *    |_ DownloadController.java
 * 개요 : 파일다운로드 컨트롤러
 * </pre>
 * 1. 작성일 : 2019. 1. 14. 오전 9:18:05
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/download")
public class DownloadController {

	@Resource(name="atchService")
	private AtchService atchService;

	@Resource(name="storageService")
	private StorageService storageService;

	@Value("${globals.atch.private.path}")
	private String atchPrivatePath;

	/**
	 * <pre>
	 * file
	 * 1. 개요   : 첨부파일 다운로드
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param atchSn
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/file/{atchId}")
	public void file(@PathVariable("atchId") String atchId,
		HttpServletRequest request, HttpServletResponse response) throws Exception{

		// 파일 가져오기
		AtchVo atchVo = new AtchVo();
		atchVo.setAtchId(atchId);
		atchVo = atchService.view(atchVo);
		if (null == atchVo) {
			throw new BaseException();
		}
		storageService.downloadFile(atchPrivatePath + atchVo.getPhysiclFlpth(), atchVo.getLogicNm(), request, response);
	}


}

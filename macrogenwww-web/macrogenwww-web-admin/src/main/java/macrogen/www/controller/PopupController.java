package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.CodeService;
import macrogen.www.service.PopupService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.PopupVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ PopupController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2019. 2. 7. 오전 10:21:33
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/popup")
public class PopupController {

	@Resource(name="popupService")
	private PopupService popupService;

	@Resource(name="codeService")
	private CodeService codeService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 팝업 관리 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo loginVo,
			@ModelAttribute("listVo") PopupVo listVo, Model model) throws Exception{
//		model.addAttribute("listVo", listVo);
		return "popup/list";
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 팝업 관리 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param listVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PopupVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<PopupVo> resultList = popupService.list(listVo);
		if( null != resultList && resultList.size() > 0 ) {
			paginationInfo.setTotalRecordCount(popupService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		// 코드목록 : 페이지당레코드개수 임시
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));
		// 코드목록 : 노출 / 비노출
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);
		resultMap.put("listVo", listVo);

		return resultMap;

	}

	/**
	 * <pre>
	 * sortSave
	 * 1. 개요   : 팝업 관리 정렬 저장
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupList
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/sortSave")
	@ResponseBody
	public Map<String, Object> sortSave(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody List<PopupVo> popupList) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		for(PopupVo popupVo : popupList){
			popupService.updateSortOrdr(popupVo);
		}

		return resultMap;
	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 팝업 관리 등록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@AuthenticationPrincipal MngrVo loginVo,
			@ModelAttribute("listVo") PopupVo listVo, Model model) throws Exception{
		return "popup/form";
	}

	/**
	 * <pre>
	 * formUpdate
	 * 1. 개요   : 팝업 관리 수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/{popupSn}")
	public String formUpdate(@AuthenticationPrincipal MngrVo loginVo,
			@PathVariable Long popupSn, Model model, @ModelAttribute("listVo") PopupVo listVo) throws Exception{
		model.addAttribute("popupSn", popupSn);
		return "popup/form";
	}

	/**
	 * <pre>
	 * viewData
	 * 1. 개요   : 팝업 관리 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> viewData(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PopupVo popupVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		PopupVo resultVo = new PopupVo();
		if (null != popupVo.getPopupSn()) {
			resultVo = popupService.view(popupVo);
		} else {
			resultVo.setExpsrYn("Y");
			resultVo.setPopupLinkTrgtCode("CURRENT");
		}
		resultMap.put("resultVo", resultVo);

		// 코드목록 : 팝업링크타겟목록
		resultMap.put("popupLinkTrgtList", codeService.listByCodeSe("POPUP_LINK_TRGT_CODE"));
		// 코드목록 : 노출 / 비노출
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		return resultMap;
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 팝업 관리 등록 & 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PopupVo popupVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		popupVo.setUpdusrSn(loginVo.getUserSn());

		if (null != popupVo.getPopupSn()) {
			popupService.update(popupVo);
		} else {
			popupVo.setRegisterSn(loginVo.getUserSn());
			popupService.insert(popupVo);
		}
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 팝업 관리 삭제 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param popupVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PopupVo popupVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		popupService.delete(popupVo);

		return resultMap;
	}

}

package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.enums.LangId;
import macrogen.www.service.CodeService;
import macrogen.www.service.MainNttService;
import macrogen.www.service.NttAtchService;
import macrogen.www.vo.MainNttVo;
import macrogen.www.vo.MainSomlnkVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.NttAtchVo;


@Controller
@RequestMapping("/{langId}/main-{mainBbsId}")
public class MainNttController {
	
	@Resource(name="mainNttService")
	private MainNttService mainNttService;
	
	@Resource(name="codeService")
	private CodeService codeService;
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 각 게시판(메인배너 / 비즈니스 카드) 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainBbsId
	 * @param loginVo
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception.	 
	 * */	
	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @PathVariable String mainBbsId, @AuthenticationPrincipal MngrVo loginVo,
			@ModelAttribute("listVo") MainNttVo listVo, Model model) throws Exception {
		
		listVo.setMainBbsId(mainBbsId);
		return "main-"+mainBbsId+"/list";
	}
	
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 각 게시판(메인배너 / 비즈니스 카드) 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainBbsId
	 * @param listVo
	 * @return
	 * @throws Exception
	 */		
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @PathVariable String mainBbsId,
			@RequestBody MainNttVo listVo) throws Exception {
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.name());
		listVo.setMainBbsId(mainBbsId);
		
		if(StringUtils.isEmpty(listVo.getOrderBy())) listVo.setOrderBy("regist_dt_desc");
		
		List<MainNttVo> resultList = mainNttService.list(listVo);
		
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(mainNttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}
		
		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);
		
		// 코드목록 : 페이지당레코드개수
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));
	
		return resultMap;
	}
	
	/**
	 * <pre>
	 * form
	 * 1. 개요   : 각 게시판 등록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */	
	@RequestMapping("/form")
	public String form(@PathVariable LangId langId, @PathVariable String mainBbsId,
			@ModelAttribute("listVo") MainNttVo listVo, Model model) throws Exception {
		return "main-"+mainBbsId+"/form";
	}
	
	/**
	 * <pre>
	 * updateForm
	 * 1. 개요   : 각 게시판 수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */	
	@RequestMapping("/form/{mainNttSn}")
	public String updateForm(@PathVariable LangId langId, @PathVariable String mainBbsId, @PathVariable Long mainNttSn,
			Model model, @ModelAttribute("listVo") MainNttVo listVo) throws Exception {

		return "main-"+mainBbsId+"/form";
	}
	
	/**
	 * <pre>
	 * formData
	 * 1. 개요   : 각 게시판 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mainBbsId
	 * @param loginVo
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId, @PathVariable String mainBbsId,
			@RequestBody MainNttVo mainNttVo) throws Exception {
		
		Map<String, Object> resultMap = new HashMap<>();
		
		if(StringUtils.isEmpty(mainNttVo.getMainNttSn())) {
			MainNttVo resultVo = new MainNttVo();
			resultMap.put("resultVo", resultVo);
		} else {
			MainNttVo resultVo = mainNttService.viewByPk(mainNttVo.getMainNttSn());
			resultMap.put("resultVo", resultVo);
		}
		
		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));
		
		return resultMap;
		
	}
	
	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 각 게시판 등록&수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mainNttVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,@PathVariable String mainBbsId, 
			@AuthenticationPrincipal MngrVo loginVo, @RequestBody MainNttVo mainNttVo) throws Exception {
		
		mainNttVo.setLangCode(langId.name());
		
		Map<String, Object> resultMap = new HashMap<>();
		
		if(StringUtils.isEmpty(mainNttVo.getMainNttSn())) {
			mainNttVo.setRegisterSn(loginVo.getUserSn());
			mainNttVo.setUpdusrSn(loginVo.getUserSn());
			mainNttVo.setMainBbsId(mainBbsId);
			mainNttService.insert(mainNttVo);
		} else {
			mainNttVo.setUpdusrSn(loginVo.getUserSn());
			mainNttService.update(mainNttVo);
		}
		
		resultMap.put("result", "success");
		return resultMap;
	}
	
	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 각 게시판 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mainNttVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo loginVo, 
			@RequestBody MainNttVo mainNttVo) throws Exception{
		
		Map<String, Object> resultMap = new HashMap<>();

		mainNttService.delete(mainNttVo);
		
		resultMap.put("result", "success");
		return resultMap;
	}
	
	/**
	 * <pre>
	 * sortSave
	 * 1. 개요   : 노출 순서 저장
	 * 2. 작성자 : eluocnc
	 * </pre>
	 */
	@RequestMapping("/expsrPrtySave")
	@ResponseBody
	public Map<String, Object> expsrPrtySave(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo loginVo,
			@RequestBody List<MainNttVo> mainNttList) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		for(MainNttVo mainNttVo : mainNttList){
			
			mainNttService.updateExpsrPrty(mainNttVo);
		}

		return resultMap;
	}
	
}


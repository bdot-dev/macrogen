package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
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
import macrogen.www.service.MainPeopleService;
import macrogen.www.vo.MainNttVo;
import macrogen.www.vo.MainPeopleVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MainPeopleController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2023. 03. 03. 오전 11:48:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/main-people")
public class MainPeopleController {

	@Autowired
	private MainPeopleService mainPeopleService;

	@Resource(name="codeService")
	private CodeService codeService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") MainPeopleVo listVo, Model model) throws Exception {

		return "main-people/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody MainPeopleVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.name());

		List<MainPeopleVo> resultList = mainPeopleService.list(listVo);

		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(mainPeopleService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	/**
	 * <pre>
	 * updateSortOrdr
	 * 1. 개요   : 노출 순서 저장
	 * 2. 작성자 : eluocnc
	 * </pre>
	 */
	@RequestMapping("/list/updateSortOrdr")
	@ResponseBody
	public Map<String, Object> updateSortOrdr(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo loginVo,
			@RequestBody List<MainPeopleVo> formList) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		for(MainPeopleVo vo : formList){
			mainPeopleService.updateSortOrdr(vo);
		}

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
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") MainPeopleVo listVo, Model model) throws Exception {
		return "main-people/form";
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
	@RequestMapping("/form/{peopleSn}")
	public String updateForm(@PathVariable LangId langId, @PathVariable Long peopleSn,
			Model model, @ModelAttribute("listVo") MainPeopleVo listVo) throws Exception {
		return "main-people/form";
	}

	/**
	 * <pre>
	 * formData
	 * 1. 개요   : 각 게시판 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param nttVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody MainPeopleVo mainPeopleVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if(StringUtils.isEmpty(mainPeopleVo.getPeopleSn())) {
			MainPeopleVo resultVo = new MainPeopleVo();
			resultMap.put("resultVo", resultVo);
		} else {
			MainPeopleVo resultVo = mainPeopleService.viewByPk(mainPeopleVo.getPeopleSn());
			resultMap.put("resultVo", resultVo);
		}

		// 코드목록 : 노출여부
		resultMap.put("expsrYnList", codeService.listByCodeSe("EXPSR_YN"));

		return resultMap;
	}

	@RequestMapping("/form/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo loginVo, @RequestBody MainPeopleVo dataVo) throws Exception {
		dataVo.setLangCode(langId.name());

		Map<String, Object> resultMap = new HashMap<>();

		if(StringUtils.isEmpty(dataVo.getPeopleSn())) {
			dataVo.setRegisterSn(loginVo.getUserSn());
			dataVo.setUpdusrSn(loginVo.getUserSn());
			mainPeopleService.insert(dataVo);
		} else {
			dataVo.setUpdusrSn(loginVo.getUserSn());
			mainPeopleService.update(dataVo);
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
			@RequestBody MainPeopleVo vo) throws Exception{

		Map<String, Object> resultMap = new HashMap<>();

		mainPeopleService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}
}

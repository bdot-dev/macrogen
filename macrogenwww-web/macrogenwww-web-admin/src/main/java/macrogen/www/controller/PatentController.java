package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import macrogen.www.service.PatentService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.PatentVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ PatentController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:56:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/patent")
public class PatentController {

	@Autowired
	private PatentService patentService;

	@Autowired
	private CodeService codeService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") PatentVo listVo, Model model) throws Exception {

		return "patent/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody PatentVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<PatentVo> resultList = patentService.list(listVo);
		paginationInfo.setTotalRecordCount(patentService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		List<CodeVo> ctgryCodeList = codeService.listByCodeSe("PATENT_CTGRY_CODE");
		resultMap.put("ctgryCodeList", ctgryCodeList);

		List<CodeVo> nationCodeList = codeService.listByCodeSe("PATENT_NATION_CODE");
		resultMap.put("nationCodeList", nationCodeList);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") PatentVo listVo, Model model) throws Exception {
		return "patent/form";
	}

	@RequestMapping("/form/{patentSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long patentSn,
			@ModelAttribute("listVo") PatentVo listVo, Model model) throws Exception {
		return "patent/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody PatentVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getPatentSn())) {
			PatentVo resultVo = new PatentVo();
			resultMap.put("resultVo", resultVo);
		} else {
			PatentVo resultVo = patentService.viewByPk(vo.getPatentSn());
			resultMap.put("resultVo", resultVo);
		}

		List<CodeVo> ctgryCodeList = codeService.listByCodeSe("PATENT_CTGRY_CODE");
		resultMap.put("ctgryCodeList", ctgryCodeList);

		List<CodeVo> nationCodeList = codeService.listByCodeSe("PATENT_NATION_CODE");
		resultMap.put("nationCodeList", nationCodeList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PatentVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		vo.setLangCode(langId.name());

		if (StringUtils.isEmpty(vo.getPatentSn())) {
			patentService.insert(vo);
		} else {
			patentService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PatentVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		patentService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody PatentVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getPatentSnList()) {
			for (Long patentSn : vo.getPatentSnList()) {
				PatentVo deleteVo = new PatentVo();
				deleteVo.setPatentSn(patentSn);
				patentService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

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
import macrogen.www.service.WnpzService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.WnpzVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ WnpzController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:57:03
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/wnpz")
public class WnpzController {

	@Autowired
	private WnpzService wnpzService;

	@Autowired
	private CodeService codeService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") WnpzVo listVo, Model model) throws Exception {

		return "wnpz/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody WnpzVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<WnpzVo> resultList = wnpzService.list(listVo);
		paginationInfo.setTotalRecordCount(wnpzService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		List<CodeVo> wnpzClCodeList = codeService.listByCodeSe("WNPZ_CL_CODE");
		resultMap.put("wnpzClCodeList", wnpzClCodeList);

		List<CodeVo> wnpzTmeCodeList = codeService.listByCodeSe("WNPZ_TME_CODE");
		resultMap.put("wnpzTmeCodeList", wnpzTmeCodeList);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") WnpzVo listVo, Model model) throws Exception {
		return "wnpz/form";
	}

	@RequestMapping("/form/{wnpzSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long wnpzSn,
			@ModelAttribute("listVo") WnpzVo listVo, Model model) throws Exception {
		return "wnpz/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody WnpzVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getWnpzSn())) {
			WnpzVo resultVo = new WnpzVo();
			resultMap.put("resultVo", resultVo);
		} else {
			WnpzVo resultVo = wnpzService.viewByPk(vo.getWnpzSn());
			resultMap.put("resultVo", resultVo);
		}

		List<CodeVo> wnpzClCodeList = codeService.listByCodeSe("WNPZ_CL_CODE");
		resultMap.put("wnpzClCodeList", wnpzClCodeList);

		List<CodeVo> wnpzTmeCodeList = codeService.listByCodeSe("WNPZ_TME_CODE");
		resultMap.put("wnpzTmeCodeList", wnpzTmeCodeList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody WnpzVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(vo.getWnpzSn())) {
			vo.setLangCode(langId.name());
			wnpzService.insert(vo);
		} else {
			wnpzService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody WnpzVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		wnpzService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody WnpzVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getWnpzSnList()) {
			for (Long wnpzSn : vo.getWnpzSnList()) {
				WnpzVo deleteVo = new WnpzVo();
				deleteVo.setWnpzSn(wnpzSn);
				wnpzService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

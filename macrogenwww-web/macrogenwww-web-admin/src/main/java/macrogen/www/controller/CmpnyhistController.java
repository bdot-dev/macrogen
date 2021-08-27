package macrogen.www.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import macrogen.www.service.CmpnyhistGroupService;
import macrogen.www.service.CmpnyhistService;
import macrogen.www.vo.CmpnyhistGroupVo;
import macrogen.www.vo.CmpnyhistVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ CmpnyhistController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:55:28
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/cmpnyhist")
public class CmpnyhistController {

	@Autowired
	private CmpnyhistService cmpnyhistService;

	@Autowired
	private CmpnyhistGroupService cmpnyhistGroupService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") CmpnyhistVo listVo, Model model) throws Exception {

		return "cmpnyhist/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody CmpnyhistVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<CmpnyhistVo> resultList = cmpnyhistService.list(listVo);
		paginationInfo.setTotalRecordCount(cmpnyhistService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		SimpleDateFormat format = new SimpleDateFormat("YYYY");
		resultMap.put("currYear", format.format(new Date()));

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") CmpnyhistVo listVo, Model model) throws Exception {
		return "cmpnyhist/form";
	}

	@RequestMapping("/form/{cmpnyhistSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long cmpnyhistSn,
			@ModelAttribute("listVo") CmpnyhistVo listVo, Model model) throws Exception {
		return "cmpnyhist/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody CmpnyhistVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getCmpnyhistSn())) {
			CmpnyhistVo resultVo = new CmpnyhistVo();
			resultMap.put("resultVo", resultVo);
		} else {
			CmpnyhistVo resultVo = cmpnyhistService.viewByPk(vo.getCmpnyhistSn());
			resultMap.put("resultVo", resultVo);
		}

		SimpleDateFormat format = new SimpleDateFormat("YYYY");
		resultMap.put("currYear", format.format(new Date()));

		List<CmpnyhistGroupVo> cmpnyhistGroupList =  cmpnyhistGroupService.allList();
		resultMap.put("cmpnyhistGroupList", cmpnyhistGroupList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(vo.getCmpnyhistSn())) {
			vo.setLangCode(langId.name());
			cmpnyhistService.insert(vo);
		} else {
			cmpnyhistService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		cmpnyhistService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getCmpnyhistSnList()) {
			for (Long cmpnyhistSn : vo.getCmpnyhistSnList()) {
				CmpnyhistVo deleteVo = new CmpnyhistVo();
				deleteVo.setCmpnyhistSn(cmpnyhistSn);
				cmpnyhistService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

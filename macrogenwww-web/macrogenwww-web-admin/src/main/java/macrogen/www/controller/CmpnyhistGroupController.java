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
import macrogen.www.vo.CmpnyhistGroupVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ CmpnyhistGroupController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 6:37:14
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/cmpnyhist/group")
public class CmpnyhistGroupController {

	@Autowired
	private CmpnyhistGroupService cmpnyhistGroupService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") CmpnyhistGroupVo listVo, Model model) throws Exception {

		return "cmpnyhist-group/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody CmpnyhistGroupVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<CmpnyhistGroupVo> resultList = cmpnyhistGroupService.list(listVo);
		paginationInfo.setTotalRecordCount(cmpnyhistGroupService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		SimpleDateFormat format = new SimpleDateFormat("YYYY");
		resultMap.put("currYear", format.format(new Date()));

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") CmpnyhistGroupVo listVo, Model model) throws Exception {
		return "cmpnyhist-group/form";
	}

	@RequestMapping("/form/{cmpnyhistGroupSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long cmpnyhistGroupSn,
			@ModelAttribute("listVo") CmpnyhistGroupVo listVo, Model model) throws Exception {
		return "cmpnyhist-group/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody CmpnyhistGroupVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getCmpnyhistGroupSn())) {
			CmpnyhistGroupVo resultVo = new CmpnyhistGroupVo();
			resultMap.put("resultVo", resultVo);
		} else {
			CmpnyhistGroupVo resultVo = cmpnyhistGroupService.viewByPk(vo.getCmpnyhistGroupSn());
			resultMap.put("resultVo", resultVo);
		}

		SimpleDateFormat format = new SimpleDateFormat("YYYY");
		resultMap.put("currYear", format.format(new Date()));

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistGroupVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(vo.getCmpnyhistGroupSn())) {
			cmpnyhistGroupService.insert(vo);
		} else {
			cmpnyhistGroupService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistGroupVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		cmpnyhistGroupService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}
}

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
import macrogen.www.service.ThesisService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.ThesisVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ ThesisController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:56:30
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/thesis")
public class ThesisController {

	@Autowired
	private ThesisService thesisService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") ThesisVo listVo, Model model) throws Exception {

		return "thesis/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody ThesisVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<ThesisVo> resultList = thesisService.list(listVo);
		paginationInfo.setTotalRecordCount(thesisService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") ThesisVo listVo, Model model) throws Exception {
		return "thesis/form";
	}

	@RequestMapping("/form/{thesisSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long thesisSn,
			@ModelAttribute("listVo") ThesisVo listVo, Model model) throws Exception {
		return "thesis/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody ThesisVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getThesisSn())) {
			ThesisVo resultVo = new ThesisVo();
			resultMap.put("resultVo", resultVo);
		} else {
			ThesisVo resultVo = thesisService.viewByPk(vo.getThesisSn());
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
			@RequestBody ThesisVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(vo.getThesisSn())) {
			vo.setLangCode(langId.name());
			thesisService.insert(vo);
		} else {
			thesisService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody ThesisVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		thesisService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody ThesisVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getThesisSnList()) {
			for (Long thesisSn : vo.getThesisSnList()) {
				ThesisVo deleteVo = new ThesisVo();
				deleteVo.setThesisSn(thesisSn);
				thesisService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

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
import macrogen.www.service.CmpnyhistGroupPhotoService;
import macrogen.www.service.CmpnyhistGroupService;
import macrogen.www.vo.CmpnyhistGroupPhotoVo;
import macrogen.www.vo.CmpnyhistGroupVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ CmpnyhistGroupPhotoController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 9. 오후 6:37:25
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/cmpnyhist/group/photo")
public class CmpnyhistGroupPhotoController {

	@Autowired
	private CmpnyhistGroupPhotoService cmpnyhistGroupPhotoService;

	@Autowired
	private CmpnyhistGroupService cmpnyhistGroupService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") CmpnyhistGroupPhotoVo listVo, Model model) throws Exception {

		return "cmpnyhist-group-photo/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody CmpnyhistGroupPhotoVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<CmpnyhistGroupPhotoVo> resultList = cmpnyhistGroupPhotoService.list(listVo);
		paginationInfo.setTotalRecordCount(cmpnyhistGroupPhotoService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		List<CmpnyhistGroupVo> cmpnyhistGroupList =  cmpnyhistGroupService.allList();
		resultMap.put("cmpnyhistGroupList", cmpnyhistGroupList);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") CmpnyhistGroupPhotoVo listVo, Model model) throws Exception {
		return "cmpnyhist-group-photo/form";
	}

	@RequestMapping("/form/{cmpnyhistGroupPhotoSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long cmpnyhistGroupPhotoSn,
			@ModelAttribute("listVo") CmpnyhistGroupPhotoVo listVo, Model model) throws Exception {
		return "cmpnyhist-group-photo/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody CmpnyhistGroupPhotoVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getCmpnyhistGroupPhotoSn())) {
			CmpnyhistGroupPhotoVo resultVo = new CmpnyhistGroupPhotoVo();
			resultMap.put("resultVo", resultVo);
		} else {
			CmpnyhistGroupPhotoVo resultVo = cmpnyhistGroupPhotoService.viewByPk(vo.getCmpnyhistGroupPhotoSn());
			resultMap.put("resultVo", resultVo);
		}

		List<CmpnyhistGroupVo> cmpnyhistGroupList =  cmpnyhistGroupService.allList();
		resultMap.put("cmpnyhistGroupList", cmpnyhistGroupList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistGroupPhotoVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(vo.getCmpnyhistGroupPhotoSn())) {
			cmpnyhistGroupPhotoService.insert(vo);
		} else {
			cmpnyhistGroupPhotoService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody CmpnyhistGroupPhotoVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		cmpnyhistGroupPhotoService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/saveSortOrders")
	@ResponseBody
	public Map<String, Object> saveSortOrders(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody List<CmpnyhistGroupPhotoVo> resultList) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		for (CmpnyhistGroupPhotoVo result : resultList) {
			cmpnyhistGroupPhotoService.updateSortOrder(result);
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

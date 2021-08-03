package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.PlosdocService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.PlosdocVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ PlosdocController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:58:04
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/fnltt/plosdoc")
public class PlosdocController {

	@Autowired
	private PlosdocService plosdocService;

	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute PlosdocVo plosdocVo, Model model) throws Exception {

		return "plosdoc/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@RequestBody PlosdocVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<PlosdocVo> resultList = plosdocService.list(listVo);
		paginationInfo.setTotalRecordCount(plosdocService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}
}

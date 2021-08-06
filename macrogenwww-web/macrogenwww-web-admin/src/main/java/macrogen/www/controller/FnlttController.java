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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.FnlttService;
import macrogen.www.vo.FnlttListVo;
import macrogen.www.vo.FnlttVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ FnlttController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:57:32
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/fnltt")
public class FnlttController {

	@Autowired
	private FnlttService fnlttService;

	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") FnlttVo listVo, Model model) throws Exception {

		return "fnltt/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@RequestBody FnlttVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(vo.getPageIndex());
		paginationInfo.setRecordCountPerPage(vo.getRecordCountPerPage());
		paginationInfo.setPageSize(vo.getPageSize());

		vo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		vo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<FnlttVo> resultList = fnlttService.list(vo);
		paginationInfo.setTotalRecordCount(fnlttService.count(vo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		if (null != resultList && !resultList.isEmpty()) {
			resultMap.put("listUpdtDe", resultList.get(0).getUpdtDe());
		} else {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			resultMap.put("listUpdtDe", format.format(new Date()));
		}

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody FnlttListVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRegisterSn(loginVo.getUserSn());
		listVo.setUpdusrSn(loginVo.getUserSn());

		fnlttService.insertList(listVo);

		return resultMap;
	}
}

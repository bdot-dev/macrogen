package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.CodeService;
import macrogen.www.service.MenuService;
import macrogen.www.service.UrlService;
import macrogen.www.vo.MenuVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.UrlVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ UrlController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 15. 오전 11:07:48
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/url")
public class UrlController {

	@Resource(name="urlService")
	private UrlService urlService;

	@Resource(name="codeService")
	private CodeService codeService;

	@Resource(name="menuService")
	private MenuService menuService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 사용자 URL 관리 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@ModelAttribute UrlVo urlVo, Model model) throws Exception {

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(urlVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(urlVo.getRecordCountPerPage());
		paginationInfo.setPageSize(urlVo.getPageSize());

		urlVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		urlVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<UrlVo> resultList = urlService.list(urlVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(urlService.count(urlVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		// 코드목록 : 페이지당레코드개수
		model.addAttribute("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		return "url/list";
	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 사용자 URL 관리 등록&수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param urlVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@ModelAttribute UrlVo urlVo, Model model) throws Exception {

		if (!StringUtils.isEmpty(urlVo.getUrl())) {
			UrlVo resultVo = new UrlVo();
			resultVo.setUrl(urlVo.getUrl());
			resultVo = urlService.view(resultVo);

			resultVo.setMode("UPDATE");
			model.addAttribute("resultVo", resultVo);
		} else {
			UrlVo resultVo = new UrlVo();
			resultVo.setMode("INSERT");
			model.addAttribute("resultVo", resultVo);
		}

		MenuVo menuVo = new MenuVo();
		menuVo.setFirstIndex(-1);
		List<MenuVo> menuList = menuService.list(menuVo);
		model.addAttribute("menuList", menuList);

		return "url/form";
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 사용자 URL 등록 & 수정 처리8
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param urlVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			UrlVo urlVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if ("UPDATE".equals(urlVo.getMode())) {
			urlVo.setUpdusrSn(loginVo.getUserSn());
			urlService.update(urlVo);
		} else {
			urlVo.setRegisterSn(loginVo.getUserSn());
			urlVo.setUpdusrSn(loginVo.getUserSn());
			urlService.insert(urlVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 사용자 URL 삭제 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param urlVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			UrlVo urlVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		urlService.delete(urlVo);

		resultMap.put("result", "success");
		return resultMap;
	}

}

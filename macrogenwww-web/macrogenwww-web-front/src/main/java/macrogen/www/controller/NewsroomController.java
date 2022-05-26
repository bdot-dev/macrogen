package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.common.CommonStringUtil;
import macrogen.www.enums.LangId;
import macrogen.www.service.NttService;
import macrogen.www.vo.NttVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ NewsroomController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:39:13
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/newsroom")
public class NewsroomController extends DefaultController {

	@Autowired
	private NttService nttService;

	@RequestMapping("/news")
	public String news(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(6);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("press-release");

		if ("mobl".equals(getDev())) {
			return getDev() + "/newsroom/news." + getLang();
		}

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}
		
		for(int i=0;i<resultList.size();i++) {
			resultList.get(i).setNttCn(CommonStringUtil.replaceEditorTag(resultList.get(i).getNttCn()));
			resultList.get(i).setNttCn(CommonStringUtil.replaceEventHander(resultList.get(i).getNttCn()));
		}
		
		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		List<NttVo> upendFixingList = nttService.upendFixingList(langId.name(), listVo.getBbsId());
		for(int i=0;i<upendFixingList.size();i++) {
			upendFixingList.get(i).setNttCn(CommonStringUtil.replaceEditorTag(upendFixingList.get(i).getNttCn()));
			upendFixingList.get(i).setNttCn(CommonStringUtil.replaceEventHander(upendFixingList.get(i).getNttCn()));
		}
		model.addAttribute("upendFixingList", upendFixingList);

		return getDev() + "/newsroom/news." + getLang();
	}

	@RequestMapping("/news/data")
	@ResponseBody
	public Map<String, Object> newsListAjaxHtml(@PathVariable LangId langId,
			@RequestBody NttVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("press-release");

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());
		
		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}
		
		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/news/{nttSn}")
	public String newsView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		
		resultVo.setNttCn(CommonStringUtil.replaceEditorTag(resultVo.getNttCn()));
		resultVo.setNttCn(CommonStringUtil.replaceEventHander(resultVo.getNttCn()));
		model.addAttribute("resultVo", resultVo);
		nttService.increaseRdcnt(listVo);
		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("press-release");
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		model.addAttribute("MOBILE_NO_FOOTER", true);

		return getDev() + "/newsroom/news-view." + getLang();
	}

	@RequestMapping("/media-library")
	public String mediaLibrary(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(9);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("media-library");

		if ("mobl".equals(getDev())) {
			return getDev() + "/newsroom/media-library." + getLang();
		}

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/newsroom/media-library." + getLang();
	}

	@RequestMapping("/media-library/data")
	@ResponseBody
	public Map<String, Object> mediaLibraryListAjaxHtml(@PathVariable LangId langId,
			@RequestBody NttVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("media-library");

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/media-library/viewAjaxHtml/{nttSn}")
	public String mediaLibraryViewAjaxHtml(@PathVariable LangId langId, @PathVariable Long nttSn,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);
		nttService.increaseRdcnt(listVo);
		// 이전글, 다음글
		String bbsId = "media-library";
		listVo.setLangCode(langId.name());
		listVo.setBbsId(bbsId);
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/newsroom/media-library-viewAjaxHtml." + getLang();
	}

	@RequestMapping("/media-library/{nttSn}")
	public String mediaLibraryView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("media-library");
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/newsroom/media-library-view." + getLang();
	}

	@RequestMapping("/notice")
	public String notice(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("notice");

		if ("mobl".equals(getDev())) {
			return getDev() + "/newsroom/notice." + getLang();
		}


		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/newsroom/notice." + getLang();
	}

	@RequestMapping("/notice/data")
	@ResponseBody
	public Map<String, Object> noticeListAjaxHtml(@PathVariable LangId langId,
			@RequestBody NttVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setLangCode(langId.name());
		listVo.setBbsId("notice");

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<NttVo> resultList = nttService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(nttService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/notice/{nttSn}")
	public String noticeView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		resultVo.setNttCn(CommonStringUtil.replaceEditorTag(resultVo.getNttCn()));
		resultVo.setNttCn(CommonStringUtil.replaceEventHander(resultVo.getNttCn()));
	
		model.addAttribute("resultVo", resultVo);
		nttService.increaseRdcnt(listVo);
		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("notice");
		listVo.setNttSn(nttSn);
		
		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		model.addAttribute("MOBILE_NO_FOOTER", true);

		return getDev() + "/newsroom/notice-view." + getLang();
	}

}

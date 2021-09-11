package macrogen.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
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

		List<NttVo> upendFixingList = nttService.upendFixingList(langId.name(), listVo.getBbsId());
		model.addAttribute("upendFixingList", upendFixingList);

		return getDev() + "/newsroom/news." + getLang();
	}

	@RequestMapping("/news/{nttSn}")
	public String newsView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("press-release");
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/newsroom/news-view." + getLang();
	}

	@RequestMapping("/media-library")
	public String mediaLibrary(@PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(9);
		listVo.setPageSize(5);
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

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/newsroom/media-library." + getLang();
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

	@RequestMapping("/notice/{nttSn}")
	public String noticeView(@PathVariable long nttSn, @PathVariable LangId langId,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setBbsId("notice");
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/newsroom/notice-view." + getLang();
	}

}

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
import macrogen.www.enums.LangId;
import macrogen.www.service.BbsCtgryService;
import macrogen.www.service.NttService;
import macrogen.www.service.PatentService;
import macrogen.www.service.ThesisService;
import macrogen.www.vo.BbsCtgryVo;
import macrogen.www.vo.NttVo;
import macrogen.www.vo.PatentVo;
import macrogen.www.vo.ThesisVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ RndController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:38:33
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/rnd")
public class RndController extends DefaultController {

	@Autowired
	private PatentService patentService;

	@Autowired
	private ThesisService thesisService;

	@Autowired
	private NttService nttService;

	@Autowired
	private BbsCtgryService bbsCtgryService;

	@RequestMapping("/patent")
	public String patent(@PathVariable LangId langId,
			@ModelAttribute("listVo") PatentVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());

		if ("mobl".equals(getDev())) {
			return getDev() + "/rnd/patent." + getLang();
		}

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<PatentVo> resultList = patentService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(patentService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/rnd/patent." + getLang();
	}

	@RequestMapping("/patent/data")
	@ResponseBody
	public Map<String, Object> patentData(@PathVariable LangId langId,
			@RequestBody PatentVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<PatentVo> resultList = patentService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(patentService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/thesis")
	public String thesis(@PathVariable LangId langId,
			@ModelAttribute("listVo") ThesisVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());

		if ("mobl".equals(getDev())) {
			return getDev() + "/rnd/thesis." + getLang();
		}

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<ThesisVo> resultList = thesisService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(thesisService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/rnd/thesis." + getLang();
	}

	@RequestMapping("/thesis/data")
	@ResponseBody
	public Map<String, Object> thesisData(@PathVariable LangId langId,
			@RequestBody ThesisVo listVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<ThesisVo> resultList = thesisService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(thesisService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}

	@RequestMapping("/institute/precision-medicine")
	public String precisionMedicine(@PathVariable LangId langId, Model model) throws Exception {

		// 연구성과 카테고리 목록 (하위목록 : 게시글 목록) bbs_id = 'research-result'
		String bbsId = "research-result";
		BbsCtgryVo ctgryVo = new BbsCtgryVo();
		ctgryVo.setBbsId(bbsId);
		ctgryVo.setFirstIndex(-1);
		List<BbsCtgryVo> resultList = bbsCtgryService.list(ctgryVo);
		if (null != resultList && !resultList.isEmpty()) {
			for (BbsCtgryVo result : resultList) {
				NttVo vo = new NttVo();
				vo.setLangCode(langId.name());
				vo.setBbsId(result.getBbsId());
				vo.setBbsCtgrySn(result.getBbsCtgrySn());
				vo.setFirstIndex(-1);
				result.setNttList(nttService.list(vo));
			}
		}
		model.addAttribute("resultList", resultList);

		return getDev() + "/rnd/institute/precision-medicine." + getLang();
	}

	@RequestMapping("/research-result/viewAjaxHtml/{nttSn}")
	public String winnerViewAjaxHtml(@PathVariable LangId langId, @PathVariable Long nttSn,
			@ModelAttribute("listVo") NttVo listVo, Model model) throws Exception {

		NttVo resultVo = nttService.viewByPk(nttSn);
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		String bbsId = "research-result";
		listVo.setLangCode(langId.name());
		listVo.setBbsId(bbsId);
		listVo.setBbsCtgrySn(listVo.getBbsCtgrySn());
		listVo.setNttSn(nttSn);

		NttVo prevVo = nttService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		NttVo nextVo = nttService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		return getDev() + "/rnd/research-result-viewAjaxHtml." + getLang();
	}

	@RequestMapping("/institute/bioinformatics")
	public String bioinformatics() throws Exception {
		return getDev() + "/rnd/institute/bioinformatics." + getLang();
	}

	@RequestMapping("/institute/biome")
	public String biome() throws Exception {
		return getDev() + "/rnd/institute/biome." + getLang();
	}

	@RequestMapping("/institute/sync-genes")
	public String syncGenes() throws Exception {
		return getDev() + "/rnd/institute/sync-genes." + getLang();
	}

	@RequestMapping("/institute/bigdata")
	public String bigdata() throws Exception {
		return getDev() + "/rnd/institute/bigdata." + getLang();
	}

}

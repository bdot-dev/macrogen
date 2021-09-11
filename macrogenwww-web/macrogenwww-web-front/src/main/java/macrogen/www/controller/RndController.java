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
import macrogen.www.service.PatentService;
import macrogen.www.service.ThesisService;
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

	@RequestMapping("/patent")
	public String patent(@PathVariable LangId langId,
			@ModelAttribute("listVo") PatentVo listVo, Model model) throws Exception {

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

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/rnd/patent." + getLang();
	}

	@RequestMapping("/thesis")
	public String thesis(@PathVariable LangId langId,
			@ModelAttribute("listVo") ThesisVo listVo, Model model) throws Exception {

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

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		return getDev() + "/rnd/thesis." + getLang();
	}

	@RequestMapping("/precision-medicine")
	public String precisionMedicine() throws Exception {
		return getDev() + "/rnd/precision-medicine." + getLang();
	}

	@RequestMapping("/bioinformatics")
	public String bioinformatics() throws Exception {
		return getDev() + "/rnd/bioinformatics." + getLang();
	}

	@RequestMapping("/biome")
	public String biome() throws Exception {
		return getDev() + "/rnd/biome." + getLang();
	}

	@RequestMapping("/sync-genes")
	public String syncGenes() throws Exception {
		return getDev() + "/rnd/sync-genes." + getLang();
	}

	@RequestMapping("/bigdata")
	public String bigdata() throws Exception {
		return getDev() + "/rnd/bigdata." + getLang();
	}

}

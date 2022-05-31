package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.common.CommonStringUtil;
import macrogen.www.common.storage.StorageService;
import macrogen.www.enums.Codes.WnpzClCode;
import macrogen.www.enums.LangId;
import macrogen.www.exception.BaseException;
import macrogen.www.service.AtchService;
import macrogen.www.service.CmpnyhistGroupPhotoService;
import macrogen.www.service.CmpnyhistGroupService;
import macrogen.www.service.CmpnyhistService;
import macrogen.www.service.CodeService;
import macrogen.www.service.EmpaService;
import macrogen.www.service.SetupService;
import macrogen.www.service.WnpzService;
import macrogen.www.vo.ApplFormVo;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.CmpnyhistGroupVo;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.EmpaVo;
import macrogen.www.vo.WnpzVo;
import macrogen.www.vo.YearCmpnyhistVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ CompanyController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:36:27
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/company")
public class CompanyController extends DefaultController {

	@Autowired
	private CodeService codeService;

	@Autowired
	private SetupService setupService;

	@Autowired
	private StorageService storageService;

	@Autowired
	private AtchService atchService;

	@Autowired
	private EmpaService empaService;

	@Autowired
	private CmpnyhistService cmpnyhistService;

	@Autowired
	private CmpnyhistGroupService cmpnyhistGroupService;

	@Autowired
	private CmpnyhistGroupPhotoService cmpnyhistGroupPhotoService;

	@Autowired
	private WnpzService wnpzService;

	@Value("${globals.atch.private.path}")
	private String atchPrivatePath;

	@RequestMapping("/overview")
	public String overview(@PathVariable LangId langId,
			Model model) throws Exception {
		return getDev() + "/company/overview." + getLang();
	}

	@RequestMapping("/bod")
	public String bod(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/bod." + getLang();
	}

	@RequestMapping("/ethical-management")
	public String ethicalManagement(@PathVariable LangId langId,
			Model model) throws Exception {
		return getDev() + "/company/ethical-management." + getLang();
	}

	@RequestMapping("/vision")
	public String vision(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/vision." + getLang();
	}

	@RequestMapping("/qualified-image")
	public String qualifiedImage(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/qualified-image." + getLang();
	}

	@RequestMapping("/hrm")
	public String hrm(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/hrm." + getLang();
	}

	@RequestMapping("/certification")
	public String certification(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/certification." + getLang();
	}

	@RequestMapping("/contact-us")
	public String contactUs(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/contact-us." + getLang();
	}

	@RequestMapping("/esg-management")
	public String esgManagement(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/esg-management." + getLang();
	}

	@RequestMapping("/global-network")
	public String globalNetwork(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/global-network." + getLang();
	}

	@RequestMapping("/global-network2")
	public String globalNetwork2(@PathVariable LangId langId, Model model) throws Exception {
		model.addAttribute("globalYn", "Y");
		return getDev() + "/company/global-network." + getLang();
	}
	
	@RequestMapping("/sitemap")
	public String sitemap(@PathVariable LangId langId, Model model) throws Exception {
		return getDev() + "/company/sitemap." + getLang();
	}
	
	@RequestMapping("/history")
	public String history(@PathVariable LangId langId,
			Model model) throws Exception {

		// 이력그룹 목록
		List<CmpnyhistGroupVo> resultList = cmpnyhistGroupService.allList();
		for (CmpnyhistGroupVo result : resultList) {
			// 연도 목록
			List<String> yearList = cmpnyhistService.distinctYearList(langId.name(), result.getCmpnyhistGroupSn());
			for (String year : yearList) {
				YearCmpnyhistVo yearCmpnyhistVo = new YearCmpnyhistVo();
				yearCmpnyhistVo.setYear(year);
				yearCmpnyhistVo.setCmpnyhistList(cmpnyhistService.listByYearAndCmpnyhistGroupSn(
						langId.name(), year, result.getCmpnyhistGroupSn()));
				result.getYearCmpnyhistList().add(yearCmpnyhistVo);
			}

			// 연혁 목록
			result.setCmpnyhistList(cmpnyhistService.listByCmpnyhistGroupSn(langId.name(), result.getCmpnyhistGroupSn()));

			// 그룹사진 목록
			result.setCmpnyhistGroupPhotoList(cmpnyhistGroupPhotoService.listByCmpnyhistGroupSn(result.getCmpnyhistGroupSn()));
		}
		model.addAttribute("resultList", resultList);

		return getDev() + "/company/history." + getLang();
	}


	@RequestMapping("/social-contribution")
	public String winner(@PathVariable LangId langId,
			Model model) throws Exception {

		// 마크로젠 과학자상 수상자 목록
		List<WnpzVo> msaResultList = wnpzService.allListByWnpzClCode(langId.name(), WnpzClCode.msa.name());
		model.addAttribute("msaResultList", msaResultList);

		// 마크로젠 여성과학자상 수상자 목록
		List<WnpzVo> wsaResultList = wnpzService.allListByWnpzClCode(langId.name(), WnpzClCode.wsa.name());
		model.addAttribute("wsaResultList", wsaResultList);

		// 마크로젠 젊은 생명정보 학자상 수상자 목록
		List<WnpzVo> ybaResultList = wnpzService.allListByWnpzClCode(langId.name(), WnpzClCode.yba.name());
		model.addAttribute("ybaResultList", ybaResultList);

		return getDev() + "/company/social-contribution." + getLang();
	}

	@RequestMapping("/winner/viewAjaxHtml/{wnpzSn}")
	public String winnerViewAjaxHtml(@PathVariable LangId langId, @PathVariable Long wnpzSn,
			@ModelAttribute("listVo") WnpzVo listVo, Model model) throws Exception {

		WnpzVo resultVo = wnpzService.viewByPk(wnpzSn);
		resultVo.setWnpzCn(CommonStringUtil.replaceEditorTag(resultVo.getWnpzCn()));
		resultVo.setWnpzCn(CommonStringUtil.replaceEventHander(resultVo.getWnpzCn()));
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setWnpzClCode(listVo.getWnpzClCode());
		listVo.setWnpzSn(wnpzSn);

		WnpzVo prevVo = wnpzService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		WnpzVo nextVo = wnpzService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		CodeVo wnpzClCodeVo = codeService.view("WNPZ_CL_CODE", listVo.getWnpzClCode());
		model.addAttribute("wnpzClCodeVo", wnpzClCodeVo);

		return getDev() + "/company/winner-viewAjaxHtml." + getLang();
	}

	@RequestMapping("/winner/listAjaxHtml")
	public String winnerListAjaxHtml(@PathVariable LangId langId,
			@ModelAttribute("listVo") WnpzVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(8);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setWnpzClCode(listVo.getWnpzClCode());

		if ("mobl".equals(getDev())) {
			return getDev() + "/company/winner-listAjaxHtml." + getLang();
		}

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<WnpzVo> resultList = wnpzService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(wnpzService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		CodeVo wnpzClCodeVo = codeService.view("WNPZ_CL_CODE", listVo.getWnpzClCode());
		model.addAttribute("wnpzClCodeVo", wnpzClCodeVo);

		return getDev() + "/company/winner-listAjaxHtml." + getLang();
	}

	@RequestMapping("/winner/list/data")
	@ResponseBody
	public Map<String, Object> winnerListData(@PathVariable LangId langId,
			@RequestBody WnpzVo listVo) throws Exception {

		Map<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());
		listVo.setWnpzClCode(listVo.getWnpzClCode());

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<WnpzVo> resultList = wnpzService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(wnpzService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		return resultMap;
	}


	@RequestMapping("/recruit")
	public String recruit(@PathVariable LangId langId,
			@ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {

		model.addAttribute("remove_header_bg_white_unuse", "Y");

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());

		if ("mobl".equals(getDev())) {
			return getDev() + "/company/recruit." + getLang();
		}

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<EmpaVo> resultList = empaService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(empaService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		// 지원구분 목록
		model.addAttribute("sportSeCodeList", codeService.listByCodeSe("SPORT_SE_CODE"));

		// 지원양식
		ApplFormVo applFormVo = new ApplFormVo();
		AtchVo wordAtchVo = setupService.getApplFormWordAtchVo();
		if (null != wordAtchVo) {
			applFormVo.setApplFormWordAtchId(wordAtchVo.getAtchId());
			applFormVo.setApplFormWordLogicNm(wordAtchVo.getLogicNm());
		}
		AtchVo hwpAtchVo = setupService.getApplFormHwpAtchVo();
		if (null != hwpAtchVo) {
			applFormVo.setApplFormHwpAtchId(hwpAtchVo.getAtchId());
			applFormVo.setApplFormHwpLogicNm(hwpAtchVo.getLogicNm());
		}
		model.addAttribute("applFormVo", applFormVo);

		return getDev() + "/company/recruit." + getLang();
	}

	@RequestMapping("/recruit/data")
	@ResponseBody
	public Map<String, Object> recruitData(@PathVariable LangId langId,
			@RequestBody EmpaVo listVo) throws Exception {

		Map<String, Object> resultMap = new HashMap<String, Object>();

		listVo.setRecordCountPerPage(10);
		listVo.setPageSize(5);
		listVo.setLangCode(langId.name());

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<EmpaVo> resultList = empaService.list(listVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(empaService.count(listVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		// 지원구분 목록
		resultMap.put("sportSeCodeList", codeService.listByCodeSe("SPORT_SE_CODE"));

		// 지원양식
		ApplFormVo applFormVo = new ApplFormVo();
		AtchVo wordAtchVo = setupService.getApplFormWordAtchVo();
		if (null != wordAtchVo) {
			applFormVo.setApplFormWordAtchId(wordAtchVo.getAtchId());
			applFormVo.setApplFormWordLogicNm(wordAtchVo.getLogicNm());
		}
		AtchVo hwpAtchVo = setupService.getApplFormHwpAtchVo();
		if (null != hwpAtchVo) {
			applFormVo.setApplFormHwpAtchId(hwpAtchVo.getAtchId());
			applFormVo.setApplFormHwpLogicNm(hwpAtchVo.getLogicNm());
		}
		resultMap.put("applFormVo", applFormVo);

		return resultMap;
	}

	@RequestMapping("/recruit/{empaSn}")
	public String recruitView(@PathVariable LangId langId,
			@PathVariable Long empaSn, @ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {

		model.addAttribute("remove_header_bg_white_unuse", "Y");

		EmpaVo resultVo = empaService.viewByPk(empaSn);
		
		resultVo.setEmpaCn(CommonStringUtil.replaceEditorTag(resultVo.getEmpaCn()));
		resultVo.setEmpaCn(CommonStringUtil.replaceEventHander(resultVo.getEmpaCn()));
		
		model.addAttribute("resultVo", resultVo);

		// 이전글, 다음글
		listVo.setLangCode(langId.name());
		listVo.setEmpaSn(empaSn);

		EmpaVo prevVo = empaService.prev(listVo);
		model.addAttribute("prevVo", prevVo);

		EmpaVo nextVo = empaService.next(listVo);
		model.addAttribute("nextVo", nextVo);

		// 지원양식
		ApplFormVo applFormVo = new ApplFormVo();
		AtchVo wordAtchVo = setupService.getApplFormWordAtchVo();
		if (null != wordAtchVo) {
			applFormVo.setApplFormWordAtchId(wordAtchVo.getAtchId());
			applFormVo.setApplFormWordLogicNm(wordAtchVo.getLogicNm());
		}
		AtchVo hwpAtchVo = setupService.getApplFormHwpAtchVo();
		if (null != hwpAtchVo) {
			applFormVo.setApplFormHwpAtchId(hwpAtchVo.getAtchId());
			applFormVo.setApplFormHwpLogicNm(hwpAtchVo.getLogicNm());
		}
		model.addAttribute("applFormVo", applFormVo);

		model.addAttribute("MOBILE_NO_FOOTER", true);

		return getDev() + "/company/recruit-view." + getLang();
	}

	@RequestMapping("/recruit/download/file/{atchId}")
	public void file(@PathVariable("atchId") String atchId,
		HttpServletRequest request, HttpServletResponse response) throws Exception{

		// 파일 가져오기
		AtchVo atchVo = new AtchVo();
		atchVo.setAtchId(atchId);
		atchVo = atchService.view(atchVo);
		if (null == atchVo) {
			throw new BaseException();
		}

		storageService.downloadFile(atchPrivatePath + atchVo.getPhysiclFlpth(), atchVo.getLogicNm(), request, response);
	}

}

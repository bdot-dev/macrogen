package macrogen.www.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.common.storage.StorageService;
import macrogen.www.enums.LangId;
import macrogen.www.exception.BaseException;
import macrogen.www.service.AtchService;
import macrogen.www.service.CmpnyhistGroupPhotoService;
import macrogen.www.service.CmpnyhistGroupService;
import macrogen.www.service.CmpnyhistService;
import macrogen.www.service.CodeService;
import macrogen.www.service.EmpaService;
import macrogen.www.service.SetupService;
import macrogen.www.vo.ApplFormVo;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.CmpnyhistGroupVo;
import macrogen.www.vo.EmpaVo;
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

	@Value("${globals.atch.private.path}")
	private String atchPrivatePath;

	@RequestMapping("/introduction/overview")
	public String introductionOverview(@PathVariable LangId langId,
			Model model) throws Exception {
		return getDev() + "/company/introduction/overview." + getLang();
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


	@RequestMapping("/winner")
	public String winner(@PathVariable LangId langId,
			Model model) throws Exception {
		return getDev() + "/company/winner." + getLang();
	}


	@RequestMapping("/recruit")
	public String recruit(@PathVariable LangId langId,
			@ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {

		listVo.setRecordCountPerPage(3);
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

	@RequestMapping("/recruit/{empaSn}")
	public String recruitView(@PathVariable LangId langId,
			@PathVariable Long empaSn, @ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {

		EmpaVo resultVo = empaService.viewByPk(empaSn);
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

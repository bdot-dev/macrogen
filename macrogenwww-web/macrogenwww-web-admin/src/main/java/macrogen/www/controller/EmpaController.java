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
import macrogen.www.service.CodeService;
import macrogen.www.service.EmpaService;
import macrogen.www.service.SetupService;
import macrogen.www.vo.ApplFormVo;
import macrogen.www.vo.AtchVo;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.EmpaVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.SetupVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ EmpaController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 8. 11. 오후 2:34:20
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/empa")
public class EmpaController {

	@Autowired
	private EmpaService empaService;

	@Autowired
	private CodeService codeService;

	@Autowired
	private SetupService setupService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {

		return "empa/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody EmpaVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<EmpaVo> resultList = empaService.list(listVo);
		paginationInfo.setTotalRecordCount(empaService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		// 접수상태목록
		List<CodeVo> rceptSttusCodeList = codeService.listByCodeSe("RCEPT_STTUS_CODE");
		resultMap.put("rceptSttusCodeList", rceptSttusCodeList);

		// 지원구분목록
		List<CodeVo> sportSeCodeList = codeService.listByCodeSe("SPORT_SE_CODE");
		resultMap.put("sportSeCodeList", sportSeCodeList);

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

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {
		return "empa/form";
	}

	@RequestMapping("/form/{empaSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long empaSn,
			@ModelAttribute("listVo") EmpaVo listVo, Model model) throws Exception {
		return "empa/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody EmpaVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getEmpaSn())) {
			EmpaVo resultVo = new EmpaVo();
			resultMap.put("resultVo", resultVo);
		} else {
			EmpaVo resultVo = empaService.viewByPk(vo.getEmpaSn());
			resultMap.put("resultVo", resultVo);
		}

		// 접수상태목록
		List<CodeVo> rceptSttusCodeList = codeService.listByCodeSe("RCEPT_STTUS_CODE");
		resultMap.put("rceptSttusCodeList", rceptSttusCodeList);

		// 지원구분목록
		List<CodeVo> sportSeCodeList = codeService.listByCodeSe("SPORT_SE_CODE");
		resultMap.put("sportSeCodeList", sportSeCodeList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody EmpaVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());

		if (StringUtils.isEmpty(vo.getEmpaSn())) {
			vo.setLangCode(langId.name());
			empaService.insert(vo);
		} else {
			empaService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody EmpaVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		empaService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody EmpaVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getEmpaSnList()) {
			for (Long empaSn : vo.getEmpaSnList()) {
				EmpaVo deleteVo = new EmpaVo();
				deleteVo.setEmpaSn(empaSn);
				empaService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/save-appl-form")
	@ResponseBody
	public Map<String, Object> saveApplForm(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody ApplFormVo applFormVo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		setupService.update("APPL_FORM_WORD", applFormVo.getApplFormWordAtchId());
		setupService.update("APPL_FORM_HWP", applFormVo.getApplFormHwpAtchId());

		return resultMap;
	}

}

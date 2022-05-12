package macrogen.www.controller;

import java.text.SimpleDateFormat;
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
import macrogen.www.service.MainSomlnkService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MainSomlnkVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MainSomlnkController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:59:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/main-somlnk")
public class MainSomlnkController {

	@Autowired
	private MainSomlnkService mainSomlnkService;

	@Autowired
	private CodeService codeService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") MainSomlnkVo listVo, Model model) throws Exception {

		return "main-somlnk/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody MainSomlnkVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<MainSomlnkVo> resultList = mainSomlnkService.list(listVo);
		paginationInfo.setTotalRecordCount(mainSomlnkService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		List<CodeVo> somlnkCtgryCodeList = codeService.listByCodeSe("SOMLNK_CTGRY_CODE");
		resultMap.put("somlnkCtgryCodeList", somlnkCtgryCodeList);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") MainSomlnkVo listVo, Model model) throws Exception {
		return "main-somlnk/form";
	}

	@RequestMapping("/form/{mainSomlnkSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long mainSomlnkSn,
			@ModelAttribute("listVo") MainSomlnkVo listVo, Model model) throws Exception {
		return "main-somlnk/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody MainSomlnkVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getMainSomlnkSn())) {
			MainSomlnkVo resultVo = new MainSomlnkVo();
			resultMap.put("resultVo", resultVo);
		} else {
			MainSomlnkVo resultVo = mainSomlnkService.viewByPk(vo.getMainSomlnkSn());
			resultMap.put("resultVo", resultVo);
		}

		List<CodeVo> somlnkCtgryCodeList = codeService.listByCodeSe("SOMLNK_CTGRY_CODE");
		resultMap.put("somlnkCtgryCodeList", somlnkCtgryCodeList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MainSomlnkVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String postDt = df.format(vo.getPostDt());
		vo.setPostDt(df.parse(postDt));
		
		if (StringUtils.isEmpty(vo.getMainSomlnkSn())) {
			vo.setLangCode(langId.name());
			mainSomlnkService.insert(vo);
		} else {
			mainSomlnkService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MainSomlnkVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		mainSomlnkService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MainSomlnkVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getMainSomlnkSnList()) {
			for (Long mainSomlnkSn : vo.getMainSomlnkSnList()) {
				MainSomlnkVo deleteVo = new MainSomlnkVo();
				deleteVo.setMainSomlnkSn(mainSomlnkSn);
				mainSomlnkService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

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
import macrogen.www.service.SocialContentsService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.SocialContentsVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ SocialContentController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 10. 29. 오후 2:59:52
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/socialContents")
public class SocialContentsController {

	@Autowired
	private SocialContentsService socialContentsService;

	@Autowired
	private CodeService codeService;

	@RequestMapping("/list")
	public String list(@PathVariable LangId langId, @AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute("listVo") SocialContentsVo listVo, Model model) throws Exception {

		return "socialContents/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@PathVariable LangId langId, @RequestBody SocialContentsVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		listVo.setLangCode(langId.toString());

		List<SocialContentsVo> resultList = socialContentsService.list(listVo);
		paginationInfo.setTotalRecordCount(socialContentsService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		List<CodeVo> cntntsCtgryCodeList = codeService.listByCodeSe("CNTNTS_CTGRY_CODE");
		resultMap.put("cntntsCtgryCodeList", cntntsCtgryCodeList);

		return resultMap;
	}

	@RequestMapping("/form")
	public String form(@PathVariable LangId langId,
			@ModelAttribute("listVo") SocialContentsVo listVo, Model model) throws Exception {
		return "socialContents/form";
	}

	@RequestMapping("/form/{cntntsSn}")
	public String form(@PathVariable LangId langId, @PathVariable Long cntntsSn,
			@ModelAttribute("listVo") SocialContentsVo listVo, Model model) throws Exception {
		return "socialContents/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@PathVariable LangId langId,
			@RequestBody SocialContentsVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>();

		if (StringUtils.isEmpty(vo.getCntntsSn())) {
			SocialContentsVo resultVo = new SocialContentsVo();
			resultMap.put("resultVo", resultVo);
		} else {
			SocialContentsVo resultVo = socialContentsService.viewByPk(vo.getCntntsSn());
			resultMap.put("resultVo", resultVo);
		}

		List<CodeVo> cntntsCtgryCodeList = codeService.listByCodeSe("CNTNTS_CTGRY_CODE");
		resultMap.put("cntntsCtgryCodeList", cntntsCtgryCodeList);

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody SocialContentsVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		vo.setRegisterSn(loginVo.getUserSn());
		vo.setUpdusrSn(loginVo.getUserSn());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String postDt = df.format(vo.getPostDt());
		vo.setPostDt(df.parse(postDt));
		
		if (StringUtils.isEmpty(vo.getCntntsSn())) {
			vo.setLangCode(langId.name());
			socialContentsService.insert(vo);
		} else {
			socialContentsService.update(vo);
		}

		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable LangId langId,
			@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody SocialContentsVo vo) throws Exception {
		HashMap<String, Object> resultMap = new HashMap<String, Object>();

		socialContentsService.delete(vo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/deleteList")
	@ResponseBody
	public Map<String, Object> deleteList(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody SocialContentsVo vo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (null != vo.getCntntsSnList()) {
			for (Long cntntsSn : vo.getCntntsSnList()) {
				SocialContentsVo deleteVo = new SocialContentsVo();
				deleteVo.setCntntsSn(cntntsSn);
				socialContentsService.delete(deleteVo);
			}
		}

		resultMap.put("result", "success");
		return resultMap;
	}
}

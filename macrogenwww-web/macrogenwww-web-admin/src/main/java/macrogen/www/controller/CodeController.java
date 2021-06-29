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
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/code")
public class CodeController {
	@Resource(name="codeService")
	private CodeService codeService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 코드 관리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@ModelAttribute CodeVo codeVo, Model model) throws Exception {

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(codeVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(codeVo.getRecordCountPerPage());
		paginationInfo.setPageSize(codeVo.getPageSize());

		codeVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		codeVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<CodeVo> resultList = codeService.list(codeVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(codeService.count(codeVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		// 코드목록 : 페이지당레코드개수
		model.addAttribute("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		return "code/list";
	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 코드 관리 등록&수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param codeVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@ModelAttribute CodeVo codeVo, Model model) throws Exception {

		if (!StringUtils.isEmpty(codeVo.getCodeSe()) &&
				!StringUtils.isEmpty(codeVo.getCode())) {
			CodeVo resultVo = new CodeVo();
			resultVo.setCodeSe(codeVo.getCodeSe());
			resultVo.setCode(codeVo.getCode());
			resultVo = codeService.view(resultVo);

			resultVo.setMode("UPDATE");
			model.addAttribute("resultVo", resultVo);
		} else {
			CodeVo resultVo = new CodeVo();
			resultVo.setMode("INSERT");
			model.addAttribute("resultVo", resultVo);
		}

		return "code/form";
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			CodeVo codeVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if ("UPDATE".equals(codeVo.getMode())) {
			codeVo.setUpdusrSn(loginVo.getUserSn());
			codeService.update(codeVo);
		} else {
			codeVo.setRegisterSn(loginVo.getUserSn());
			codeVo.setUpdusrSn(loginVo.getUserSn());
			codeService.insert(codeVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 문자열 관리 등록&수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param codeVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			CodeVo codeVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		codeService.delete(codeVo);

		resultMap.put("result", "success");
		return resultMap;
	}


}

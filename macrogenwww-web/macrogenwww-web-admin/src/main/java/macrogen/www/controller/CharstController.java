package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.CharstService;
import macrogen.www.service.CodeService;
import macrogen.www.vo.CharstVo;
import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/charst")
public class CharstController {

	@Resource(name="charstService")
	private CharstService charstService;

	@Resource(name="codeService")
	private CodeService codeService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 문자열 관리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param charstVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute CharstVo charstVo, Model model) throws Exception {

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(charstVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(charstVo.getRecordCountPerPage());
		paginationInfo.setPageSize(charstVo.getPageSize());

		charstVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		charstVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<CharstVo> resultList = charstService.list(charstVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(charstService.count(charstVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		// 코드목록 : 페이지당레코드개수
		model.addAttribute("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		return "charst/list";
	}

	/**
	 * <pre>
	 * insertForm
	 * 1. 개요   : 문자열 관리 등록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param charstVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String insertForm(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute CharstVo charstVo, Model model) throws Exception {

		CharstVo resultVo = new CharstVo();
		resultVo.setMode("INSERT");
		model.addAttribute("resultVo", resultVo);

		return "charst/form";
	}

	/**
	 * <pre>
	 * updateForm
	 * 1. 개요   : 문자열 관리 수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param charstVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/{charstId:.+}")
	public String updateForm(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute CharstVo charstVo, Model model) throws Exception {

		CharstVo resultVo = new CharstVo();
		resultVo.setCharstId(charstVo.getCharstId());
		resultVo = charstService.view(resultVo);

		resultVo.setMode("UPDATE");
		model.addAttribute("resultVo", resultVo);

		return "charst/form";
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 문자열 관리 등록& 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param charstVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			CharstVo charstVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if ("UPDATE".equals(charstVo.getMode())) {
			charstVo.setUpdusrSn(loginVo.getUserSn());
			charstService.update(charstVo);
		} else {
			charstVo.setRegisterSn(loginVo.getUserSn());
			charstVo.setUpdusrSn(loginVo.getUserSn());
			charstService.insert(charstVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 문자열 관리 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param charstVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			CharstVo charstVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		try {
			charstService.delete(charstVo);
			resultMap.put("result", "success");
		} catch (DataIntegrityViolationException e) {
			resultMap.put("result", "fail_has_children");
		}
		return resultMap;
	}

}

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
import macrogen.www.service.MngrmenuService;
import macrogen.www.service.MngrurlService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;
import macrogen.www.vo.MngrurlVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MngrurlController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 15. 오전 11:07:48
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/mngrurl")
public class MngrurlController {

	@Resource(name="mngrurlService")
	private MngrurlService mngrurlService;

	@Resource(name="codeService")
	private CodeService codeService;

	@Resource(name="mngrmenuService")
	private MngrmenuService mngrmenuService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 URL관리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@ModelAttribute MngrurlVo mngrurlVo, Model model) throws Exception {

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(mngrurlVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(mngrurlVo.getRecordCountPerPage());
		paginationInfo.setPageSize(mngrurlVo.getPageSize());

		mngrurlVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		mngrurlVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<MngrurlVo> resultList = mngrurlService.list(mngrurlVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(mngrurlService.count(mngrurlVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		// 코드목록 : 페이지당레코드개수
		model.addAttribute("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		return "mngrurl/list";
	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 관리자 URL 관리 등록&수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrurlVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@ModelAttribute MngrurlVo mngrurlVo, Model model) throws Exception {

		if (!StringUtils.isEmpty(mngrurlVo.getUrl())) {
			MngrurlVo resultVo = new MngrurlVo();
			resultVo.setUrl(mngrurlVo.getUrl());
			resultVo = mngrurlService.view(resultVo);

			resultVo.setMode("UPDATE");
			model.addAttribute("resultVo", resultVo);
		} else {
			MngrurlVo resultVo = new MngrurlVo();
			resultVo.setMode("INSERT");
			model.addAttribute("resultVo", resultVo);
		}

		MngrmenuVo mngrmenuVo = new MngrmenuVo();
		mngrmenuVo.setFirstIndex(-1);
		// mngrmenuVo.setPendncyYn("N");
		List<MngrmenuVo> mngrmenuList = mngrmenuService.list(mngrmenuVo);
		model.addAttribute("mngrmenuList", mngrmenuList);

		return "mngrurl/form";
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 관리자 URL 관리 등록&수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrurlVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			MngrurlVo mngrurlVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if ("UPDATE".equals(mngrurlVo.getMode())) {
			mngrurlVo.setUpdusrSn(loginVo.getUserSn());
			mngrurlService.update(mngrurlVo);
		} else {
			mngrurlVo.setRegisterSn(loginVo.getUserSn());
			mngrurlVo.setUpdusrSn(loginVo.getUserSn());
			mngrurlService.insert(mngrurlVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 URL 관리 삭제 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrurlVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			MngrurlVo mngrurlVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mngrurlService.delete(mngrurlVo);

		resultMap.put("result", "success");
		return resultMap;
	}

}

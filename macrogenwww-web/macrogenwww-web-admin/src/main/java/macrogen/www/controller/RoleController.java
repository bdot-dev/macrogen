package macrogen.www.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.LoggerFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.common.CommonStringUtil;
import macrogen.www.service.CodeService;
import macrogen.www.service.MngrAuthLogService;
import macrogen.www.service.MngrmenuService;
import macrogen.www.service.MngrurlService;
import macrogen.www.service.RoleService;
import macrogen.www.vo.MngrAuthLogVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.MngrmenuVo;
import macrogen.www.vo.MngrurlVo;
import macrogen.www.vo.RoleVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ RoleController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 15. 오후 3:24:42
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/role")
public class RoleController {

	@Resource(name="roleService")
	private RoleService roleService;

	@Resource(name="codeService")
	private CodeService codeService;

	@Resource(name="mngrurlService")
	private MngrurlService mngrurlService;
	
	@Resource(name="mngrAuthLogService")
	private MngrAuthLogService mngrAuthLogService;
	
	@Resource(name="mngrmenuService")
	private MngrmenuService mngrmenuService;
	
	private final org.slf4j.Logger logger = LoggerFactory.getLogger(this.getClass());
	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 권한 관리 목록
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param roleVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo loginVo,
			@ModelAttribute RoleVo roleVo, Model model) throws Exception {

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(roleVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(roleVo.getRecordCountPerPage());
		paginationInfo.setPageSize(roleVo.getPageSize());

		roleVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		roleVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<RoleVo> resultList = roleService.list(roleVo);
		if (null != resultList && resultList.size() > 0) {
			paginationInfo.setTotalRecordCount(roleService.count(roleVo));
		} else {
			paginationInfo.setTotalRecordCount(0);
		}

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("resultList", resultList);

		// 코드목록 : 페이지당레코드개수
		model.addAttribute("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		return "role/list";
	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 관리자 관리 등록&수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param roleVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@AuthenticationPrincipal MngrVo loginVo, @ModelAttribute RoleVo roleVo, Model model) throws Exception {
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String clientIp = CommonStringUtil.getClientIp(request);
		
		RoleVo resultVo = new RoleVo();
		if (!StringUtils.isEmpty(roleVo.getRoleId())) {
			resultVo.setRoleId(roleVo.getRoleId());
			resultVo = roleService.view(resultVo);
			
			MngrAuthLogVo logVo = new MngrAuthLogVo();
			logVo.setRoleId(roleVo.getRoleId());
			logVo.setIp(clientIp);
			logVo.setRegisterSn(loginVo.getUserSn());
			logVo.setResult("조회");
			roleVo.setRegisterSn(loginVo.getRegisterSn());
			mngrAuthLogService.insert(logVo);
			
			resultVo.setMode("UPDATE");
			model.addAttribute("resultVo", resultVo);
		} else {

			resultVo.setMode("INSERT");
			model.addAttribute("resultVo", resultVo);
		}

		// 메뉴 URL 목록 가져오기
		MngrurlVo mngrurlVo =  new MngrurlVo();
		mngrurlVo.setFirstIndex(-1);
		mngrurlVo.setRoleId(resultVo.getRoleId());
		model.addAttribute("urlList", mngrurlService.list(mngrurlVo));

		return "role/form";
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 관리자 권한 등록 & 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param roleVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			RoleVo roleVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String clientIp = CommonStringUtil.getClientIp(request);
		
		MngrAuthLogVo logVo = new MngrAuthLogVo();
		logVo.setRoleId(roleVo.getRoleId());
		logVo.setIp(clientIp);
		logVo.setRegisterSn(loginVo.getUserSn());
		logVo.setResult("저장");
		roleVo.setRegisterSn(loginVo.getRegisterSn());
		mngrAuthLogService.insert(logVo);
		
		if ("UPDATE".equals(roleVo.getMode())) {
			roleVo.setUpdusrSn(loginVo.getUserSn());
			roleService.update(roleVo);

		} else {
			roleVo.setRegisterSn(loginVo.getUserSn());
			roleVo.setUpdusrSn(loginVo.getUserSn());
			roleService.insert(roleVo);
		}
		
		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 권한 삭제 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param roleVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			RoleVo roleVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String clientIp = CommonStringUtil.getClientIp(request);
		
		MngrAuthLogVo logVo = new MngrAuthLogVo();
		logVo.setRoleId(roleVo.getRoleId());
		logVo.setIp(clientIp);
		logVo.setRegisterSn(loginVo.getUserSn());
		logVo.setResult("삭제");
		roleVo.setRegisterSn(loginVo.getRegisterSn());
		mngrAuthLogService.insert(logVo);
		
		
		roleService.delete(roleVo);

		resultMap.put("result", "success");
		return resultMap;
	}

}

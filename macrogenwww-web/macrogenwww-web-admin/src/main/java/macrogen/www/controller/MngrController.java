package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.enums.Roles;
import macrogen.www.service.CodeService;
import macrogen.www.service.MngrService;
import macrogen.www.service.RoleService;
import macrogen.www.service.UserService;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.RoleVo;
import macrogen.www.vo.UserVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MngrController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 6. 12. 오후 2:53:43
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/mngr")
public class MngrController {
	private static final String INITIAL_PASSWORD = "macrogen@admin";
	
	@Resource(name="mngrService")
	private MngrService mngrService;

	@Autowired
	private UserService userService;

	@Resource(name="roleService")
	private RoleService roleService;

	@Resource(name="passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;

	@Resource(name="codeService")
	private CodeService codeService;

	/**
	 * <pre>
	 * list
	 * 1. 개요   : 관리자 목록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	public String list(MngrVo listVo, Model model) throws Exception{

		model.addAttribute("listVo", listVo);
		return "mngr/list";
	}

	/**
	 * <pre>
	 * listData
	 * 1. 개요   : 관리자 목록 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@RequestBody MngrVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<MngrVo> resultList = mngrService.list(listVo);
		paginationInfo.setTotalRecordCount(mngrService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		// 코드목록 : 페이지당레코드개수 임시
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		RoleVo roleVo = new RoleVo();
		roleVo.setFirstIndex(-1);
		resultMap.put("roleList", roleService.list(roleVo));

		return resultMap;

	}

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 관리자 상세 등록 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param mngrVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(Model model, MngrVo listVo) throws Exception {

		model.addAttribute("listVo", listVo);
		return "mngr/form";
	}

	/**
	 * <pre>
	 * updateForm
	 * 1. 개요   : 관리자 상세 수정 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param userSn
	 * @param listVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/{userSn}")
	public String updateForm(@PathVariable Long userSn, Model model, MngrVo listVo) throws Exception {
		model.addAttribute("userSn", userSn);
		model.addAttribute("listVo", listVo);
		return "mngr/form";
	}

	/**
	 * <pre>
	 * formData
	 * 1. 개요   : 관리자 상세 데이터
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@AuthenticationPrincipal MngrVo loginVo,
			MngrVo mngrVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (!StringUtils.isEmpty(mngrVo.getUserSn())) {
			MngrVo resultVo = new MngrVo();
			resultVo.setUserSn(mngrVo.getUserSn());
			resultVo = mngrService.view(resultVo);
			resultMap.put("resultVo", resultVo);

			// 비밀번호 삭제
			resultVo.setLoginPassword(null);
		} else {
			MngrVo resultVo = new MngrVo();
			resultMap.put("resultVo", resultVo);

			// 기본값 설정
			resultVo.setRoleId(Roles.ROLE_GENERAL.name());
		}

		RoleVo param = new RoleVo();
		param.setFirstIndex(-1);
		resultMap.put("roleList", roleService.list(param));

		return resultMap;
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 관리자 등록 & 수정 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MngrVo mngrVo) throws Exception {

		Map<String, Object> resultMap = new HashMap<>();

		// encode password
		if (!StringUtils.isEmpty(mngrVo.getLoginPassword())) {
			mngrVo.setLoginPassword(passwordEncoder.encodePassword(mngrVo.getLoginPassword(), null));
		}

		// set login user
		mngrVo.setRegisterSn(loginVo.getUserSn());
		mngrVo.setUpdusrSn(loginVo.getUserSn());

		if (!StringUtils.isEmpty(mngrVo.getUserSn())) {
			mngrService.update(mngrVo);
		} else {
			// 관리자 등록시, 초기비밀번호(macrogen@admin) 설정, 비밀번호_초기화_여부 'Y' 로 설정
			mngrVo.setLoginPassword(passwordEncoder.encodePassword(INITIAL_PASSWORD, null));
			mngrVo.setPasswordInitlYn("Y");
			
			mngrService.insert(mngrVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * exist
	 * 1. 개요   : 로그인 아이디 포함 여부 체크
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/exist")
	@ResponseBody
	public Map<String, Object> exist(MngrVo loginVo, MngrVo mngrVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		UserVo resultVo = userService.viewByLoginId(mngrVo.getLoginId());
		if (null != resultVo) {
			resultMap.put("result", "exist");
		} else {
			resultMap.put("result", "not_exist");
		}
		return resultMap;
	}

	/**
	 * <pre>
	 * delete
	 * 1. 개요   : 관리자 삭제
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MngrVo mngrVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mngrService.delete(mngrVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	/**
	 * <pre>
	 * initPasswordInputErrorCo
	 * 1. 개요   : 관리자 패스워드 에러 카운터 초기화
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param mngrVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/initPasswordInputErrorCo")
	@ResponseBody
	public Map<String, Object> initPasswordInputErrorCo(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MngrVo mngrVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mngrService.initPasswordInputErrorCo(mngrVo);

		resultMap.put("result", "success");
		return resultMap;
	}
}

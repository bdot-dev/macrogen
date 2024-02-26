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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import macrogen.www.service.CodeService;
import macrogen.www.service.MberService;
import macrogen.www.service.UserService;
import macrogen.www.vo.MberVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.UserVo;

@Controller
@RequestMapping("/mber")
public class MberController {

	@Autowired
	private MberService mberService;

	@Autowired
	private UserService userService;

	@Resource(name="passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;

	@Resource(name="codeService")
	private CodeService codeService;

	/*@RequestMapping("/list")
	public String list(@ModelAttribute("listVo") MberVo listVo, Model model) throws Exception{
		return "mber/list";
	}

	@RequestMapping("/list/data")
	@ResponseBody
	public Map<String, Object> listData(@RequestBody MberVo listVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(listVo.getPageIndex());
		paginationInfo.setRecordCountPerPage(listVo.getRecordCountPerPage());
		paginationInfo.setPageSize(listVo.getPageSize());

		listVo.setFirstIndex(paginationInfo.getFirstRecordIndex());
		listVo.setLastIndex(paginationInfo.getLastRecordIndex());

		List<MberVo> resultList = mberService.list(listVo);
		paginationInfo.setTotalRecordCount(mberService.count(listVo));

		resultMap.put("paginationInfo", paginationInfo);
		resultMap.put("resultList", resultList);

		// 코드목록 : 페이지당레코드개수 임시
		resultMap.put("recordCountPerPageList", codeService.listByCodeSe("RECORD_COUNT_PER_PAGE"));

		return resultMap;

	}

	@RequestMapping("/form")
	public String form(Model model, @ModelAttribute("listVo") MberVo listVo) throws Exception {
		return "mber/form";
	}

	@RequestMapping("/form/{userSn}")
	public String updateForm(@PathVariable Long userSn, Model model,
			@ModelAttribute("listVo") MberVo listVo) throws Exception {
		return "mber/form";
	}

	@RequestMapping("/form/data")
	@ResponseBody
	public Map<String, Object> formData(@RequestBody MberVo mberVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		if (!StringUtils.isEmpty(mberVo.getUserSn())) {
			MberVo resultVo = new MberVo();
			resultVo.setUserSn(mberVo.getUserSn());
			resultVo = mberService.view(resultVo);
			resultMap.put("resultVo", resultVo);

			// 비밀번호 삭제
			resultVo.setLoginPassword(null);
		} else {
			MberVo resultVo = new MberVo();
			resultMap.put("resultVo", resultVo);
		}

		return resultMap;
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MberVo mberVo) throws Exception {

		Map<String, Object> resultMap = new HashMap<>();

		// encode password
		if (!StringUtils.isEmpty(mberVo.getLoginPassword())) {
			mberVo.setLoginPassword(passwordEncoder.encodePassword(mberVo.getLoginPassword(), null));
		}

		// set login user
		mberVo.setRegisterSn(loginVo.getUserSn());
		mberVo.setUpdusrSn(loginVo.getUserSn());

		if (!StringUtils.isEmpty(mberVo.getUserSn())) {
			mberService.update(mberVo);
		} else {
			mberService.insert(mberVo);
		}

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/exist")
	@ResponseBody
	public Map<String, Object> exist(@RequestBody MberVo mberVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		UserVo resultVo = userService.viewByLoginId(mberVo.getLoginId());
		if (null != resultVo) {
			resultMap.put("result", "exist");
		} else {
			resultMap.put("result", "not_exist");
		}
		return resultMap;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Map<String, Object> delete(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MberVo mberVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mberService.delete(mberVo);

		resultMap.put("result", "success");
		return resultMap;
	}

	@RequestMapping("/initPasswordInputErrorCo")
	@ResponseBody
	public Map<String, Object> initPasswordInputErrorCo(@AuthenticationPrincipal MngrVo loginVo,
			@RequestBody MberVo mberVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		mberService.initPasswordInputErrorCo(mberVo);

		resultMap.put("result", "success");
		return resultMap;
	}*/
}

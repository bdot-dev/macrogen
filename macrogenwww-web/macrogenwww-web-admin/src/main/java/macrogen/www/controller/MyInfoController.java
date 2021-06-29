package macrogen.www.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import macrogen.www.service.MngrService;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ MyInfoController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 7. 5. 오후 4:19:00
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/myinfo")
public class MyInfoController {

	@Resource(name="mngrService")
	private MngrService mngrService;

	@Resource(name="passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;

	/**
	 * <pre>
	 * form
	 * 1. 개요   : 내정보 변경 폼
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param loginVo
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/form")
	public String form(@AuthenticationPrincipal MngrVo loginVo, Model model) throws Exception {

		MngrVo resultVo = new MngrVo();
		resultVo.setLoginId(loginVo.getLoginId());
		resultVo = mngrService.viewByLoginId(resultVo);
		resultVo.setMode("UPDATE");
		model.addAttribute("resultVo", resultVo);

		return "myinfo/form";
	}

	/**
	 * <pre>
	 * submit
	 * 1. 개요   : 내 정보 변경 처리
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
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo, MngrVo mngrVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		if (!StringUtils.isEmpty(mngrVo.getLoginPassword())) {
			mngrVo.setLoginPassword(passwordEncoder.encodePassword(mngrVo.getLoginPassword(), null));
		}
		mngrVo.setUpdusrSn(loginVo.getUserSn());
		mngrService.updateMyinfo(mngrVo);

		resultMap.put("result", "success");
		return resultMap;
	}
}

package macrogen.www.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import macrogen.www.service.MngrService;
import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/change-initial-password")
public class ChangeInitialPasswordController {
	@Autowired
	private MngrService mngrService;

	@Resource(name="passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;

	@RequestMapping(value="", method = RequestMethod.GET)
	public String form(HttpSession session, Model model) throws Exception {
		if (null == session.getAttribute("PASSWORD_CHANGE_USER_SN")) {
			throw new RuntimeException("invalid access");
		}

		long sessionUserSn = (Long) session.getAttribute("PASSWORD_CHANGE_USER_SN");
		MngrVo resultVo = new MngrVo();
		resultVo.setUserSn(sessionUserSn);
		resultVo = mngrService.view(resultVo);
		model.addAttribute("resultVo", resultVo);

		if (null == resultVo || !"Y".equals(resultVo.getPasswordInitlYn())) {
			throw new RuntimeException("invalid access");
		}

		return "change-initial-password/form";
	}

	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(HttpSession session, MngrVo mngrVo) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();

		// check valid session
		if (null == session.getAttribute("PASSWORD_CHANGE_USER_SN")) {
			throw new RuntimeException("invalid access");
		}

		// check not empty password to be changed
		if (StringUtils.isEmpty(mngrVo.getLoginPassword())) {
			throw new RuntimeException("invalid access");
		}

		long sessionUserSn = (Long) session.getAttribute("PASSWORD_CHANGE_USER_SN");
		MngrVo resultVo = new MngrVo();
		resultVo.setUserSn(sessionUserSn);
		resultVo = mngrService.view(resultVo);

		// check if passowrd_init_yn is 'Y'
		if (null == resultVo || !"Y".equals(resultVo.getPasswordInitlYn())) {
			throw new RuntimeException("invalid access");
		}

		mngrVo.setUserSn(sessionUserSn);
		mngrVo.setUpdusrSn(sessionUserSn);
		mngrVo.setLoginPassword(passwordEncoder.encodePassword(mngrVo.getLoginPassword(), null));

		// check if old password = new password
		if (mngrVo.getLoginPassword().equals(resultVo.getLoginPassword())) {
			resultMap.put("result", "invalid_password_equal");
			return resultMap;
		}

		mngrService.updateInitPassword(mngrVo);

		session.setAttribute("PASSWORD_CHANGE_USER_SN", null);

		resultMap.put("result", "success");
		return resultMap;
	}
}

package macrogen.www.controller;

import java.util.HashMap;
import java.util.Map;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import macrogen.www.service.MngrService;
import macrogen.www.service.UserService;
import macrogen.www.vo.MngrVo;


@Controller
@RequestMapping("/auth")
public class AuthController {
	private static final Logger LOGGER = LoggerFactory.getLogger(AuthController.class);

	@Resource(name="mngrService")
	private MngrService mngrService;
	
	@Resource(name="userService")
	private UserService userService;
	
	@Resource(name="passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;
	/**
	 * <pre>
	 * loginForm
	 * 1. 개요   : 개인정보 변경 인증
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param model
	 * @param request
	 * @param response
	 * @param locale
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, Object> submit(@AuthenticationPrincipal MngrVo loginVo, MngrVo mngrVo, HttpSession session) throws Exception {
		Map<String, Object> resultMap = new HashMap<>();
		
		mngrVo.setUpdusrSn(loginVo.getUserSn());
		
		MngrVo resultVo = new MngrVo();
		mngrVo.setUserPwd(passwordEncoder.encodePassword(mngrVo.getUserPwd(), null));
		resultVo = mngrService.userAuth(mngrVo);
		
		MngrVo userVo = new MngrVo();
		userVo = mngrService.view(loginVo);
		
		if(loginVo.getLoginId().equals(mngrVo.getUserId())||loginVo.getLoginId()==mngrVo.getUserId()) {			
			if(resultVo!=null&&userVo.getPasswordInputErrorCo()<5) {
				resultMap.put("result", "success"); 
				session.setAttribute("auth", "success");
				
			}else if (resultVo==null&&userVo.getPasswordInputErrorCo()<5) {
				userService.increasePasswordInputErrorCo(loginVo);
				resultMap.put("result", "fail");
			}else if(userVo.getPasswordInputErrorCo()>4) {
				resultMap.put("result", "locked");
			}
		}else {
			if(userVo.getPasswordInputErrorCo()<5) {
				userService.increasePasswordInputErrorCo(loginVo);
				resultMap.put("result", "fail");
			}else if(userVo.getPasswordInputErrorCo()>4) {
				resultMap.put("result", "locked");
			}
			
		}
		return resultMap;
	}

}

package macrogen.www.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MyInfoController.class);
	public static final String pwdFormat = "^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,20}$";//비밀번호 포맷
	
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
		boolean pwdChk = false;
		Matcher matcher;
		
		if (!StringUtils.isEmpty(mngrVo.getLoginPassword())) {
			matcher = Pattern.compile(pwdFormat).matcher(mngrVo.getLoginPassword()); //비밀번호 포맷체크
			pwdChk = matcher.find(); //비밀번호 포맷체크
			mngrVo.setLoginPassword(passwordEncoder.encodePassword(mngrVo.getLoginPassword(), null));
		}
		mngrVo.setUpdusrSn(loginVo.getUserSn());
		
		MngrVo resultVo = new MngrVo();
		resultVo = mngrService.viewByLoginId(loginVo);
		
		if(mngrVo.getCurrentPassword()!=null&&!mngrVo.getCurrentPassword().equals("")) { //개인정보 변경 폼에서 현재 비밀번호가 입력되어있는지 체크
			mngrVo.setCurrentPassword(passwordEncoder.encodePassword(mngrVo.getCurrentPassword(), null));
			if(resultVo.getLoginPassword()==mngrVo.getCurrentPassword()||resultVo.getLoginPassword().equals(mngrVo.getCurrentPassword())) {//저장된 비밀번호와 개인정보 변경 폼에 입력한 현재 비밀번호가 같은지 체크
				if(resultVo.getUserSn()==mngrVo.getUserSn()||resultVo.getUserSn().equals(mngrVo.getUserSn())) {//저장된 유저 번호와 받아오는 유저 번호가 같은지 체크
					if(!mngrVo.getLoginPassword().isEmpty()) { //개인정보 변경 폼에서 새로운 비밀번호를 받아오는지 체크
						if(pwdChk) { //비밀번호 포맷을 통과했는지 체크
							mngrService.updateMyinfo(mngrVo);
							resultMap.put("result", "success");
						}else if(!pwdChk) {//비밀번호 포맷을 통과하지 못한 경우
							resultMap.put("result", "pwdFormatFail");
						}
					}else if(mngrVo.getLoginPassword().isEmpty()) { //개인정보 변경 폼에서 새로운 비밀번호를 받아오지 않는 경우(다른 정보 수정 시)
						mngrService.updateMyinfo(mngrVo);
						resultMap.put("result", "success");
					}
				}else if(resultVo.getUserSn()!=mngrVo.getUserSn()){//저장된 유저 번호와 받아오는 유저 번호가 다른 경우
					resultMap.put("result", "userSnFail");
				}
			}
			else if(resultVo.getLoginPassword()!=mngrVo.getCurrentPassword()){//개인정보 변경 폼에 입력된 현재 비밀번호와 저장된 비밀번호가 다른 경우
				resultMap.put("result", "passwordFail");
			}
		}else if(mngrVo.getCurrentPassword()==null||mngrVo.getCurrentPassword().equals("")) {//개인정보 변경 폼에서 현재 비밀번호가 입력되지 않은 경우
			resultMap.put("result", "passwordEmpty");
		}
		
		return resultMap;
	}

	
	@RequestMapping("/auth")
	public String auth(@AuthenticationPrincipal MngrVo loginVo, Model model) throws Exception {
		
		return "auth/auth";
	}
}

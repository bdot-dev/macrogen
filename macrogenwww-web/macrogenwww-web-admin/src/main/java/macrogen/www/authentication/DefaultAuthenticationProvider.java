package macrogen.www.authentication;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import macrogen.www.common.CommonStringUtil;
import macrogen.www.enums.Roles;
import macrogen.www.service.CodeService;
import macrogen.www.service.LoginLogService;
import macrogen.www.service.MngrService;
import macrogen.www.service.UserService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.LoginLogVo;
import macrogen.www.vo.MngrVo;
import macrogen.www.vo.UserVo;

/**
 * <pre>
 * macrogen.www.authentication
 *    |_ DefaultAuthenticationProvider.java
 * 인증 처리
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:30:08
 * 2.작성자 : eluocnc
 * @version :
 */
public class DefaultAuthenticationProvider implements AuthenticationProvider {

	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultAuthenticationProvider.class);

	@Resource(name = "mngrService")
	private MngrService mngrService;

	@Resource(name = "passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;

	@Resource(name = "userService")
	private UserService userService;

	@Resource(name="codeService")
	private CodeService codeService;
	
	@Resource(name = "loginLogService")
	private LoginLogService loginLogService;
	
	/**
	 * <pre>
	 * authenticate
	 * 1. 개요   : 인증 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @see org.springframework.security.authentication.AuthenticationProvider#authenticate(org.springframework.security.core.Authentication)
	 * @param authentication
	 * @return
	 * @throws AuthenticationException
	 */
	@Override
	public Authentication authenticate(Authentication authentication)
			throws AuthenticationException {
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		
		// get login_id, login_pw
		String loginId = (String)authentication.getPrincipal();
		String loginPw = (String)authentication.getCredentials();
		
		String clientIp = CommonStringUtil.getClientIp(request);
		LOGGER.info("ip:::::::::::::::::::"+clientIp);
		LOGGER.info("remote addr:::::::::::::::::::"+request.getRemoteAddr());
		
		LoginLogVo loginLogVo = new LoginLogVo();
		
		loginLogVo.setLoginId(loginId);
		loginLogVo.setIp(clientIp);
		
		if (loginId == null || "".equals(loginId.trim())) {
			LOGGER.debug("invalid login id");
			loginLogVo.setLoginResult("실패");
			loginLogVo.setReason("아이디 미입력");
			
			try {
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			throw new BadCredentialsException("Login failed");
		}
		if (loginPw == null || "".equals(loginPw.trim())) {
			LOGGER.debug("invalid login pw");
			loginLogVo.setLoginResult("실패");
			loginLogVo.setReason("비밀번호 미입력");
			
			try {
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			
			throw new BadCredentialsException("Login failed");
		}

		// encrypt loginPw
		String encryptedLoginPw = null;
    	try {
			encryptedLoginPw = passwordEncoder.encodePassword(loginPw, null);
    	} catch (Exception e) {
			LOGGER.debug("exception in encrypting login_pw ");
			throw new BadCredentialsException("Login failed");
		}

    	// 로그인아이디정보 가져오기
		MngrVo mngrVo = new MngrVo();
		mngrVo.setLoginId(loginId);
		try {
			mngrVo = mngrService.viewByLoginId(mngrVo);
		} catch (Exception e) {
			LOGGER.debug("database access failed");
			throw new BadCredentialsException("Login failed");
		}

		if (mngrVo == null) {
			LOGGER.debug("login_id dose not match");
			loginLogVo.setLoginResult("실패");
			loginLogVo.setReason("등록되지 않은 아이디");
			try {
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			
			throw new BadCredentialsException("Login failed");
		}
		if (mngrVo.getLoginId() == null || "".equals(mngrVo.getLoginId().trim())) {
			loginLogVo.setLoginResult("실패");
			loginLogVo.setReason("아이디 오류");
			
			try {
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			
			LOGGER.debug("invalid db id");
			throw new BadCredentialsException("Login failed");
		}
		if (mngrVo.getLoginPassword() == null || "".equals(mngrVo.getLoginPassword().trim())) {
			loginLogVo.setLoginResult("실패");
			loginLogVo.setReason("비밀번호 오류");
			
			try {
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			
			LOGGER.debug("invalid db pw");
			throw new BadCredentialsException("Login failed");
		}

		// 비밀번호 입력오류 횟수 가 n보다 크면, 계정잠김
		try {
			CodeVo maxErrorCoCodeVo = codeService.view("SITE_CONFIG", "MAX_PASSWORD_INPUT_ERROR_CO");
			if (null != maxErrorCoCodeVo && !StringUtils.isEmpty(maxErrorCoCodeVo.getCodeNm())) {
				Integer maxErrorCo = Integer.valueOf(maxErrorCoCodeVo.getCodeNm());
				LOGGER.debug("maxErrorCo:{}", maxErrorCo);

				if (mngrVo.getPasswordInputErrorCo() >= maxErrorCo) {
					throw new BadCredentialsException("password_input_error_count_exceed");
				}
			}
		} catch (BadCredentialsException e) {
			LOGGER.debug(e.getMessage());
			throw new BadCredentialsException("password_input_error_count_exceed");
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}

		// 사용중지여부 체크
		/*if (!"Y".equals(mngrVo.getUseYn())) {
			throw new BadCredentialsException("Login failed");
		}*/

		// 아이피 확인 : 아이피 접속제한 등에 사용
		
		LOGGER.debug("userIp : {}", request.getRemoteAddr());

		// 아이디와 암호화된 비밀번호가 일치하는가?
		if (loginId.equals(mngrVo.getLoginId())
				&& encryptedLoginPw.equals(mngrVo.getLoginPassword())) {
			LOGGER.info("login success...");
			
			try {
				loginLogVo.setLoginResult("성공");
				loginLogVo.setReason("로그인 성공");
				loginLogService.insert(loginLogVo);
				UserVo userVo = new UserVo();
				userVo.setUserSn(mngrVo.getUserSn());
				String loginTkn = CommonStringUtil.randomStrCreate(6);
				userVo.setLoginTkn(loginTkn);
				mngrVo.setLoginTkn(loginTkn);
				
				// 관리자 로그인 TOKEN 값 추가 
				mngrService.increaseMngrLoginToken(userVo);
				
				
				Boolean bUserOverlap = false;
				if(!StringUtils.isEmpty(mngrVo)) {
					MngrVo admInfo = mngrService.view(mngrVo);
					if(admInfo != null && admInfo.getLoginTkn().equals(mngrVo.getLoginTkn()) ) bUserOverlap = true;
				}
				
				
				request.setAttribute("bUserOverlap", bUserOverlap);
				request.setAttribute("mngrVo", mngrVo);
				
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
				throw new BadCredentialsException("password_input_error_count_exceed");
			}
			
			
			// 초기비밀번호 변경 화면으로 이동
			if ("Y".equals(mngrVo.getPasswordInitlYn())) {
				request.getSession().setAttribute("PASSWORD_CHANGE_USER_SN", mngrVo.getUserSn());
				throw new BadCredentialsException("necessary_to_change_password");
			}
			
			// 비밀번호입력오류회수 초기화
			try {
				UserVo userVo = new UserVo();
				userVo.setUserSn(mngrVo.getUserSn());
				userService.initPasswordInputErrorCo(userVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}

			// add authorities
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority(Roles.ROLE_USER.name()));

			// 권한 추가
			if (!StringUtils.isEmpty(mngrVo.getRoleId())) {
				authorities.add(new SimpleGrantedAuthority(mngrVo.getRoleId()));
			}

			// 관리자-권한-관계의 권한을 추가로 설정
			mngrVo.setLoginPassword(null);
			UsernamePasswordAuthenticationToken authenticationToken =
					new UsernamePasswordAuthenticationToken(mngrVo, null, authorities);
			authenticationToken.setDetails(mngrVo);

			return authenticationToken;
		} else if (loginId.equals(mngrVo.getLoginId())
				&& !encryptedLoginPw.equals(mngrVo.getLoginPassword())) {
			try {
				loginLogVo.setLoginResult("실패");
				loginLogVo.setReason("비밀번호 오류");
				loginLogService.insert(loginLogVo);
				UserVo userVo = new UserVo();
				userVo.setUserSn(mngrVo.getUserSn());
				userService.increasePasswordInputErrorCo(userVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			throw new BadCredentialsException("Login failed");
		} else if(!loginId.equals(mngrVo.getLoginId())
				&& encryptedLoginPw.equals(mngrVo.getLoginPassword())){
			
			try {
				loginLogVo.setLoginResult("실패");
				loginLogVo.setReason("아이디 오류");
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			
			throw new BadCredentialsException("Login failed");
		} else if(!loginId.equals(mngrVo.getLoginId())
				&& !encryptedLoginPw.equals(mngrVo.getLoginPassword())){
			
			try {
				loginLogVo.setLoginResult("실패");
				loginLogVo.setReason("아이디와 비밀번호 오류");
				loginLogService.insert(loginLogVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			
			throw new BadCredentialsException("Login failed");
		}
		else {
			throw new BadCredentialsException("Login failed");
		}
	}

	@Override
	public boolean supports(Class<?> authentication) {
		LOGGER.debug("supports() called...");
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}

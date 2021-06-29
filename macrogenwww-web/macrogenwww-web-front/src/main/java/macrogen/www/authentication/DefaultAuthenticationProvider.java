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

import macrogen.www.enums.Roles;
import macrogen.www.service.CodeService;
import macrogen.www.service.MberService;
import macrogen.www.service.UserService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MberVo;
import macrogen.www.vo.UserVo;

public class DefaultAuthenticationProvider implements AuthenticationProvider {

	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultAuthenticationProvider.class);

	@Resource(name = "mberService")
	private MberService mberService;

	@Resource(name = "passwordEncoder")
	private ShaPasswordEncoder passwordEncoder;

	@Resource(name = "userService")
	private UserService userService;

	@Resource(name="codeService")
	private CodeService codeService;

	@Override
	public Authentication authenticate(Authentication authentication)
			throws AuthenticationException {

		// get login_id, login_pw
		String loginId = (String)authentication.getPrincipal();
		String loginPw = (String)authentication.getCredentials();

		if (loginId == null || "".equals(loginId.trim())) {
			LOGGER.debug("invalid login id");
			throw new BadCredentialsException("Login failed");
		}
		if (loginPw == null || "".equals(loginPw.trim())) {
			LOGGER.debug("invalid login pw");
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
		MberVo mberVo = new MberVo();
		mberVo.setLoginId(loginId);
		try {
			mberVo = mberService.viewByLoginId(mberVo);
		} catch (Exception e) {
			LOGGER.debug("database access failed");
			throw new BadCredentialsException("Login failed");
		}

		if (mberVo == null) {
			LOGGER.debug("login_id dose not match");
			throw new BadCredentialsException("Login failed");
		}
		if (mberVo.getLoginId() == null || "".equals(mberVo.getLoginId().trim())) {
			LOGGER.debug("invalid db id");
			throw new BadCredentialsException("Login failed");
		}
		if (mberVo.getLoginPassword() == null || "".equals(mberVo.getLoginPassword().trim())) {
			LOGGER.debug("invalid db pw");
			throw new BadCredentialsException("Login failed");
		}

		// 비밀번호 입력오류 횟수 가 n보다 크면, 계정잠김
		try {
			CodeVo maxErrorCoCodeVo = codeService.view("SITE_CONFIG", "MAX_PASSWORD_INPUT_ERROR_CO");
			if (null != maxErrorCoCodeVo && !StringUtils.isEmpty(maxErrorCoCodeVo.getCodeNm())) {
				Integer maxErrorCo = Integer.valueOf(maxErrorCoCodeVo.getCodeNm());
				LOGGER.debug("maxErrorCo:{}", maxErrorCo);

				if (mberVo.getPasswordInputErrorCo() >= maxErrorCo) {
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
		/*if (!"Y".equals(mberVo.getUseYn())) {
			throw new BadCredentialsException("Login failed");
		}*/

		// 아이피 확인 : 아이피 접속제한 등에 사용
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		LOGGER.debug("userIp : {}", request.getRemoteAddr());

		// 아이디와 암호화된 비밀번호가 일치하는가?
		if (loginId.equals(mberVo.getLoginId())
				&& encryptedLoginPw.equals(mberVo.getLoginPassword())) {
			LOGGER.info("login success...");

			//
			try {
				UserVo userVo = new UserVo();
				userVo.setUserSn(mberVo.getUserSn());
				userService.initPasswordInputErrorCo(userVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}

			// add authorities
			List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority(Roles.ROLE_USER.name()));

			// 관리자-권한-관계의 권한을 추가로 설정
			mberVo.setLoginPassword(null);
			UsernamePasswordAuthenticationToken authenticationToken =
					new UsernamePasswordAuthenticationToken(mberVo, null, authorities);
			authenticationToken.setDetails(mberVo);

			return authenticationToken;
		} else if (loginId.equals(mberVo.getLoginId())
				&& !encryptedLoginPw.equals(mberVo.getLoginPassword())) {
			try {
				UserVo userVo = new UserVo();
				userVo.setUserSn(mberVo.getUserSn());
				userService.increasePasswordInputErrorCo(userVo);
			} catch (Exception e) {
				LOGGER.debug(e.getMessage());
			}
			throw new BadCredentialsException("Login failed");
		} else {
			throw new BadCredentialsException("Login failed");
		}
	}

	@Override
	public boolean supports(Class<?> authentication) {
		LOGGER.debug("supports() called...");
		return authentication.equals(UsernamePasswordAuthenticationToken.class);
	}

}

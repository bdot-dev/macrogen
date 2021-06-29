package macrogen.www.authentication;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Calendar;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.util.StringUtils;

import macrogen.www.common.AesCipher;
import macrogen.www.common.CookieUtil;
import macrogen.www.service.CodeService;
import macrogen.www.service.MngrService;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.authentication 
 *    |_ DefaultAuthenticationSuccessHandler.java
 * 인증성공시의 처리
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:31:01
 * 2.작성자 : eluocnc
 * @version : 
 */
public class DefaultAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultAuthenticationSuccessHandler.class);
//	private static final SimpleDateFormat YYYYMMDDHHMMSS = new SimpleDateFormat("yyyyMMddHHmmss", LocaleContextHolder.getLocale());

	@Resource(name="aesCipher")
	private AesCipher aesCipher;

	@Resource(name="codeService")
	private CodeService codeService;
	
	@Resource(name="mngrService")
	private MngrService mngrService;

	/**
	 * <pre>
	 * onAuthenticationSuccess
	 * 1. 개요   : 인증성공시의 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @see org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler#onAuthenticationSuccess(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, org.springframework.security.core.Authentication)
	 * @param request
	 * @param response
	 * @param authentication
	 * @throws ServletException
	 * @throws IOException
	 */ 	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws ServletException, IOException {

		LOGGER.debug("onAuthenticationSuccess() started...");

		MngrVo loginVo = (MngrVo) authentication.getPrincipal();

		// 관리자아이디 저장
		try {
			if ("Y".equals(request.getParameter("saveId"))) {
				// 암호화된 쿠키생성
				String encLoginId = aesCipher.encrypt(loginVo.getLoginId());
				CookieUtil.setCookie(request, response, "mngr_id", encLoginId, "/", 60*60*24*365);
			} else {
				// 쿠키삭제
				CookieUtil.setCookie(request, response, "mngr_id", null, "/", 0);
			}
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}
		
		// 로그인 회수 증가
		try {
			MngrVo mngrVo = new MngrVo();
			mngrVo.setUserSn(loginVo.getUserSn());
			mngrVo.setLoginId(loginVo.getLoginId());
			mngrService.increaseLoginCo(mngrVo);
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}

		// 비밀번호 변경 최종일 확인 -> 비밀번호 변경페이지로 포워딩
		try {
			CodeVo passwordChangeMonthCode = codeService.view("SITE_CONFIG", "PASSWORD_CHANGE_MONTH");
			if (null != passwordChangeMonthCode && !StringUtils.isEmpty(passwordChangeMonthCode.getCodeNm())) {
				Integer passwordChangeMonth = Integer.valueOf(passwordChangeMonthCode.getCodeNm());
				Calendar expireDate = Calendar.getInstance();
				expireDate.setTime(loginVo.getLastPasswordChangeDt());
				expireDate.add(Calendar.MONTH, passwordChangeMonth);
				
				Date now = new Date();
				if (now.compareTo(expireDate.getTime()) > 0) {
					response.sendRedirect("/myinfo/form?alert=expired");
					return;
				}
			}
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}

		if(StringUtils.isEmpty(request.getParameter("returnUrl"))) {
			LOGGER.debug("returnUrl isEmpty");
			// 로그인 이후 이동할 URL결정
			HttpSession session = request.getSession();
			SavedRequest savedRequest = (SavedRequest) session.getAttribute("SPRING_SECURITY_SAVED_REQUEST");
			if (null != savedRequest && !StringUtils.isEmpty(savedRequest.getRedirectUrl())) {
				LOGGER.debug("savedRequest.getRedirectUrl() : {}", savedRequest.getRedirectUrl());
				response.sendRedirect(savedRequest.getRedirectUrl());
//			} else if (!StringUtils.isEmpty(request.getHeader("REFERER"))) {
//				response.sendRedirect(request.getHeader("REFERER"));
			} else {
				LOGGER.debug("request.getContextPath() + getDefaultTargetUrl() : {}", request.getContextPath() + getDefaultTargetUrl());
				response.sendRedirect(request.getContextPath() + getDefaultTargetUrl());
				return;
			}
		} else {
			LOGGER.debug("returnUrl not Empty");
			String encodedUrl = URLEncoder.encode(request.getParameter("returnUrl"), StandardCharsets.UTF_8.displayName());
			LOGGER.debug("encodedUrl : {}", encodedUrl);
			response.sendRedirect(encodedUrl);
			return;
		}
	}
}

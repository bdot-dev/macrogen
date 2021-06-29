package macrogen.www.authentication;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

/**
 * <pre>
 * macrogen.www.authentication 
 *    |_ DefaultAuthenticationLogoutHandler.java
 * 로그아웃시의 처리
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:29:00
 * 2.작성자 : eluocnc
 * @version : 
 */
public class DefaultAuthenticationLogoutHandler implements LogoutSuccessHandler {

	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultAuthenticationLogoutHandler.class);

	/**
	 * <pre>
	 * onLogoutSuccess
	 * 1. 개요   : 로그아웃시의 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @see org.springframework.security.web.authentication.logout.LogoutSuccessHandler#onLogoutSuccess(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, org.springframework.security.core.Authentication)
	 * @param request
	 * @param response
	 * @param authentication
	 * @throws IOException
	 * @throws ServletException
	 */ 	
	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {

		if (authentication != null && authentication.getDetails() != null) {
			try {
				LOGGER.debug(request.getSession().toString());


				LOGGER.debug("User Successfully Logout");

            } catch (Exception e) {
            	LOGGER.error(e.getMessage());
            }
		}

		response.setStatus(HttpServletResponse.SC_OK);
	    response.sendRedirect("/login");
	}

}

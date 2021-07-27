package macrogen.www.authentication;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

/**
 * <pre>
 * macrogen.www.authentication 
 *    |_ DefaultAuthenticationFailureHandler.java
 * 인증실패시 처리 
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:27:34
 * 2.작성자 : eluocnc
 * @version : 
 */
public class DefaultAuthenticationFailureHandler implements AuthenticationFailureHandler {
	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultAuthenticationFailureHandler.class);

	/**
	 * <pre>
	 * onAuthenticationFailure
	 * 1. 개요   : 인증실패시 처리
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @see org.springframework.security.web.authentication.AuthenticationFailureHandler#onAuthenticationFailure(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, org.springframework.security.core.AuthenticationException)
	 * @param request
	 * @param response
	 * @param exception
	 * @throws IOException
	 * @throws ServletException
	 */ 	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {

		LOGGER.debug(exception.getMessage());
		if (exception.getClass() == BadCredentialsException.class) {
			if ("password_input_error_count_exceed".equals(exception.getMessage())) {
				response.sendRedirect("/login?err=2");
				return;
			} else if ("necessary_to_change_password".equals(exception.getMessage())) {
				response.sendRedirect("/change-initial-password");
				return;
			}
		}
		
		response.sendRedirect("/login?err=1");
		return;
	}

}

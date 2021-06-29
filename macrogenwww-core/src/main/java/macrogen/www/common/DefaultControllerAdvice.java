package macrogen.www.common;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import macrogen.www.exception.BaseException;

@ControllerAdvice
public class DefaultControllerAdvice {
	private static final Logger LOGGER = LoggerFactory.getLogger(DefaultControllerAdvice.class);

	@ExceptionHandler(BaseException.class)
	public void handleBaseException(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, Exception e) throws BaseException {
		e.printStackTrace();
		LOGGER.debug(e.getMessage());
		e.printStackTrace();
		try {
			if ("stock shortage".equals(e.getMessage())) {
				response.sendRedirect("/error.jsp");
			} else {
				response.sendRedirect("/error.jsp");
			}
		} catch (IOException ex) {
			LOGGER.debug(e.getMessage());
		}
	}

	@ExceptionHandler(SQLException.class)
	public void handleSQLException(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, Exception e) {
		e.printStackTrace();
		LOGGER.debug("some sql exception process...");

		try {
			response.sendRedirect("/error.jsp");
		} catch (IOException ex) {
			LOGGER.debug(e.getMessage());
		}
	}

	@ExceptionHandler(Exception.class)
	public void handleException(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, Exception e) {
		e.printStackTrace();
		LOGGER.debug("some exception process...");
//		ex.getClass() == NoSuchMessageException.class, e.getClass()

		try {
			response.sendRedirect("/error.jsp");
		} catch (IOException ex) {
			LOGGER.debug(e.getMessage());
		}
	}

}

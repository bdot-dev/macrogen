package macrogen.www.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.util.WebUtils;

public class CookieUtil {

	protected static final Logger LOG = LoggerFactory.getLogger(CookieUtil.class);

	/**
	 * 해당 쿠키 값을 가져온다.
	 *
	 * @param request
	 *            HttpServletRequest
	 * @param name
	 *            쿠키 값을 가져올 속성
	 * @return 해당 쿠키 값
	 */
	public static String getCookie(HttpServletRequest request, String name) {
		String rtnValue = null;
		Cookie cookie = WebUtils.getCookie(request, name);

		try {
			if (cookie != null) {
				rtnValue = URLDecoder.decode(cookie.getValue(), "UTF-8");
			}
		} catch (UnsupportedEncodingException e) {
			//LOG.debug(e.getLocalizedMessage(), e);
			if (!StringUtils.isEmpty(e.getLocalizedMessage())) {
			    LOG.debug(e.getLocalizedMessage().replaceAll("\r\n", ""));
			}
		}

		return rtnValue;
	}

	/**
	 * 쿠키를 셋팅한다.
	 *
	 * @param res
	 *            HttpServletResponse
	 * @param name
	 *            쿠키 이름
	 * @param value
	 *            쿠키 값
	 * @param domain
	 *            도메인
	 * @param path
	 *            쿠키를 전송할 경로
	 * @param maxAge
	 *            쿠키의 유효시간(초 단위. 음수 입력 시, 브라우저를 닫을 때 삭제 됨)
	 */
	public static void setCookie(HttpServletResponse res, String name,
			String value, String domain, String path, int maxAge) {
		Cookie cookie = null;

		if (!StringUtils.isBlank(name)) {
			try {
				if (StringUtils.isBlank(value)) {
					cookie = new Cookie(name, "");
				} else {
					cookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));
				}

				if (!"localhost".equals(domain) && !"127.0.0.1".equals(domain)) {
					cookie.setDomain(domain);
				}

				cookie.setPath(path);
				cookie.setMaxAge(maxAge);

				res.addCookie(cookie);
			} catch (UnsupportedEncodingException e) {
				//LOG.debug(e.getLocalizedMessage(), e);
				if (!StringUtils.isEmpty(e.getLocalizedMessage())) {
				    LOG.debug(e.getLocalizedMessage().replaceAll("\r\n", ""));
				}
			}
		}
	}

	/**
	 * 쿠키를 셋팅한다.
	 *
	 * @param req
	 *            HttpServletRequest
	 * @param res
	 *            HttpServletResponse
	 * @param name
	 *            쿠키 이름
	 * @param value
	 *            쿠키 값
	 */
	/*public static void setCookie(HttpServletRequest req,
			HttpServletResponse res, String name, String value) {
		setCookie(res, name, value, req.getServerName(), req.getContextPath(),
				-1);
	}*/

	/**
	 * 쿠키를 셋팅한다.
	 *
	 * @param req
	 *            HttpServletRequest
	 * @param res
	 *            HttpServletResponse
	 * @param name
	 *            쿠키 이름
	 * @param value
	 *            쿠키 값
	 * @param maxAge
	 *            쿠키가 살아있는 시간. 초단위
	 */
	/*public static void setCookie(HttpServletRequest req,
			HttpServletResponse res, String name, String value, int maxAge) {
		setCookie(res, name, value, req.getServerName(), req.getContextPath(),
				maxAge);
	}*/

	/**
	 * 쿠키를 셋팅한다.
	 *
	 * @param req
	 *            HttpServletRequest
	 * @param res
	 *            HttpServletResponse
	 * @param name
	 *            쿠키 이름
	 * @param value
	 *            쿠키 값
	 * @param path
	 *            쿠키 패스
	 */
	public static void setCookie(HttpServletRequest req,
			HttpServletResponse res, String name, String value, String path) {
		setCookie(res, name, value, req.getServerName(), path, -1);
	}

	/**
	 * 쿠키를 셋팅한다.
	 *
	 * @param req
	 *            HttpServletRequest
	 * @param res
	 *            HttpServletResponse
	 * @param name
	 *            쿠키 이름
	 * @param value
	 *            쿠키 값
	 * @param path
	 *            쿠키 패스
	 * @param maxAge
	 *            쿠키가 살아있는 시간. 초단위
	 */
	public static void setCookie(HttpServletRequest req,
			HttpServletResponse res, String name, String value, String path,
			int maxAge) {
		setCookie(res, name, value, req.getServerName(), path, maxAge);
	}

}

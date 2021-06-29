package macrogen.www.interceptor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.support.RequestContextUtils;

public class FrontLocaleChangeInterceptor extends LocaleChangeInterceptor {
	private static final Logger LOGGER = LoggerFactory.getLogger(FrontLocaleChangeInterceptor.class);

	private static final ArrayList<String> LANGUAGE_LIST = new ArrayList<String>(
			Arrays.asList("ko", "en", "zh"));

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws ServletException {

		if(!StringUtils.isEmpty(response.getContentType())) {
			return true;
		}

		LOGGER.debug("servletPath:{}", request.getServletPath());

		LocaleResolver localeResolver = RequestContextUtils.getLocaleResolver(request);
		if (localeResolver == null) {
			throw new IllegalStateException("No LocaleResolver found: not in a DispatcherServlet request?");
		}

		try {
			/**
			 *  로케일 설정 : servletPath 기반 resolve
			 *  예를 들어, /ko/url 의 경우, 해당언어로 로케일 설정
			 */
			if (!StringUtils.isEmpty(request.getServletPath()) && request.getServletPath().split("/").length >= 1) {
				String language = request.getServletPath().split("/")[1];
				if (LANGUAGE_LIST.contains(language)) {
					localeResolver.setLocale(request, response, StringUtils.parseLocaleString(language));
					return true;
				}
			}

			/**
			 * 로케일 정보가 없을 경우 or 한글, 영어, 중국어가 아닐 경우
			 * 영어로 기본 로케일 설정
			 */
			Locale locale = localeResolver.resolveLocale(request);
			if (null == locale || StringUtils.isEmpty(locale.getLanguage()) ||
					!LANGUAGE_LIST.contains(locale.getLanguage())) {
				localeResolver.setLocale(request, response, StringUtils.parseLocaleString("en"));
				return true;
			}


		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}

		return true;
	}

}

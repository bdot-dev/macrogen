package macrogen.www.controller;

import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;

@RequestMapping("/{langId}/locale")
@Controller
public class LocaleController {

	private static final Logger LOGGER = LoggerFactory.getLogger(LocaleController.class);

	private static final ArrayList<String> LANGUAGE_LIST = new ArrayList<String>(
			Arrays.asList("/ko/", "/en/", "/zh/"));

	@RequestMapping("/change")
	public void change(@PathVariable LangId langId, Locale locale,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		String refererTrgt = request.getHeader("REFERER");
		if (StringUtils.isEmpty(refererTrgt)) {
			response.sendRedirect("/");
			return;
		}

		String path = getServletPath(refererTrgt);

		for (String languageUrl : LANGUAGE_LIST) {
			if (path.startsWith(languageUrl)) {
				/*String redirectUrl = path.replace(languageUrl,
						"/" + locale.getLanguage() + "/");*/

				String redirectUrl = "/" + locale.getLanguage() + "/main";

				response.sendRedirect(redirectUrl);
				return;
			}
		}
		response.sendRedirect("/");
	}

	private String getServletPath(String url) {
		String ret = null;
		try {
			ret = new URL(url).getPath();
		} catch (Exception e) {
			LOGGER.debug(e.getMessage());
		}
		return ret;
	}

}

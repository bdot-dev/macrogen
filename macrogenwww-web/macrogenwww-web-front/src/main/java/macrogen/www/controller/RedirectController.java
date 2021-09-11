package macrogen.www.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * hanbang.controller
 *    |_ RedirectController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 7. 3. 오전 9:11:06
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
public class RedirectController {

	@RequestMapping("/main")
	public String main(Locale locale, HttpServletRequest request) throws Exception {
		return "redirect:/" + locale.getLanguage() + "/main";
	}

	@RequestMapping(value = { "/ko", "/en" })
	public String language(Locale locale) throws Exception {
		return "redirect:/" + locale.getLanguage() + "/main";
	}

}

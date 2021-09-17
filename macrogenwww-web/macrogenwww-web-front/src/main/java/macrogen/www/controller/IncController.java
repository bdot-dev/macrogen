package macrogen.www.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/inc")
public class IncController extends DefaultController {

	@RequestMapping("/htmlHead")
	public String htmlHead(Model model) throws Exception {
		return getDev() + "/inc/htmlHead";
	}

	@RequestMapping("/header")
	public String header(Model model, Locale locale, HttpSession session, HttpServletRequest request) throws Exception {
		return getDev() + "/inc/header." + getLang();
	}

	@RequestMapping("/header-inner-gnb")
	public String headerInnerGnb(Model model, Locale locale, HttpSession session, HttpServletRequest request) throws Exception {
		return getDev() + "/inc/header.inner.gnb." + getLang();
	}

	@RequestMapping("/footer")
	public String footer() throws Exception {
		return getDev() + "/inc/footer." + getLang();
	}

}

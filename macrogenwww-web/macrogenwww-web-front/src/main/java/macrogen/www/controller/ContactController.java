package macrogen.www.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import macrogen.www.enums.LangId;
import macrogen.www.service.CodeService;
import macrogen.www.service.ContactService;
import macrogen.www.utils.CaptchaUtil;
import macrogen.www.vo.CodeVo;
import macrogen.www.vo.ContactVo;
import nl.captcha.Captcha;

@Controller
@RequestMapping("/{langId}/etc/contact")
public class ContactController extends DefaultController {

	@Autowired
	private CodeService codeService;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("")
	public String contact(@PathVariable LangId langId, Model model) throws Exception {
				
		model.addAttribute("mobilePrefixList", codeService.listByCodeSe("MOBILE_PREFIX"));	
		model.addAttribute("nationCodeList", codeService.listByCodeSe("CONTACT_NATION_CODE"));
		model.addAttribute("emailCodeList", codeService.listByCodeSe("CONTACT_EMAIL_CODE"));
		
		return getDev() + "/etc/contact." + getLang();
	}
	
	@RequestMapping("/captcha-image")
	@ResponseBody
	public void captchaImage(@PathVariable LangId langId, Model model,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		new CaptchaUtil().getImgCaptcha(request, response);
	}
	
	@RequestMapping("/submit")
	@ResponseBody	
	public Map<String, Object> contactSubmit(@PathVariable LangId langId, ContactVo vo,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Map<String, Object> resultMap = new HashMap<>();
		
		// validate captcha string (vo.getCaptchaString())
		Captcha captcha = (Captcha) request.getSession().getAttribute(Captcha.NAME);
		if (StringUtils.isEmpty(vo.getCaptchaString()) ||
				!captcha.isCorrect(vo.getCaptchaString())) {
			resultMap.put("result", "fail");
 			resultMap.put("message", "invalid_captcha");
			return resultMap;
		}
	
		vo.setLangCode(langId.name());
		
		contactService.insert(vo);
		
		resultMap.put("nationCodeList", codeService.listByCodeSe("CONTACT_NATION_CODE"));
		resultMap.put("emailCodeList", codeService.listByCodeSe("CONTACT_EMAIL_CODE"));
		resultMap.put("result", "success");
		return resultMap;
		
	}
	
}

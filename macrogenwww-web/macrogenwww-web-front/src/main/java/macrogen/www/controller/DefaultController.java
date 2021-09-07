package macrogen.www.controller;

import java.beans.PropertyEditorSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import macrogen.www.enums.LangId;

/**
 * <pre>
 * hanbang.controller
 *    |_ DefaultController.java
 *
 * </pre>
 * 1. 작성일 : 2018. 7. 2. 오후 1:20:15
 * 2. 작성자 : eluocnc
 * @version :
 */
public class DefaultController {

	@InitBinder
	public void initBinder(WebDataBinder binder) throws Exception {

		binder.registerCustomEditor(MultipartFile.class, new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				setValue(null);
			}
		});

		binder.registerCustomEditor(LangId.class, new PropertyEditorSupport() {

			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				this.setValue(text);
			}

			@Override
			public String getAsText() {
				return (String) getValue();
			}
		});

	}

	protected String getLang() {
		try {
			String lang = LocaleContextHolder.getLocale().getLanguage();
			if (!StringUtils.isEmpty(lang)) {
				return lang;
			} else {
				return "ko";
			}
		} catch (Exception e) {
			return "ko";
		}
	}

	protected String getDev() {
		if (null != getSession().getAttribute("DEVICE_TYPE")) {
			return (String) getSession().getAttribute("DEVICE_TYPE");
		} else {
			return "pc";
		}
	}

	private HttpServletRequest getRequest() {
		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	}

	private HttpSession getSession() {
		return getRequest().getSession();
	}
}

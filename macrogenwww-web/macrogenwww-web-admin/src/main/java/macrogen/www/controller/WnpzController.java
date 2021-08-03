package macrogen.www.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.vo.MngrVo;
import macrogen.www.vo.WnpzVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ WnpzController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:57:03
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/wnpz")
public class WnpzController {

	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute WnpzVo wnpzVo, Model model) throws Exception {

		return "wnpz/list";
	}
}

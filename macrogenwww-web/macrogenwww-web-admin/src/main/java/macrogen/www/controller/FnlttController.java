package macrogen.www.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.vo.FnlttVo;
import macrogen.www.vo.MngrVo;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ FnlttController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 7. 30. 오후 12:57:32
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/fnltt")
public class FnlttController {

	@RequestMapping("/list")
	public String list(@AuthenticationPrincipal MngrVo mngrVo,
			@ModelAttribute FnlttVo fnlttVo, Model model) throws Exception {

		return "fnltt/list";
	}
}

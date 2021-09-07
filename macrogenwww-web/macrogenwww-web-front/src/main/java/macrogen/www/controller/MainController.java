package macrogen.www.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/{langId}/main")
public class MainController extends DefaultController {

	@RequestMapping("")
	public String main(@AuthenticationPrincipal MngrVo loginVo, Model model) throws Exception {

		return getDev() + "/main/main." + getLang();
	}

}

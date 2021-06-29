package macrogen.www.controller;

import javax.annotation.Resource;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.service.MngrService;
import macrogen.www.vo.MngrVo;

@Controller
@RequestMapping("/main")
public class MainController {

	@Resource(name="mngrService")
    private MngrService mngrService;

	@RequestMapping("")
	public String main(@AuthenticationPrincipal MngrVo loginVo, Model model) throws Exception {

		return "main/main";
	}

}

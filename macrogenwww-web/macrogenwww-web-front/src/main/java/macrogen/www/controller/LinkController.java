package macrogen.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ LinkController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 18. 오후 7:48:49
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
public class LinkController extends DefaultController {

	@RequestMapping("/link")
	public String main(Model model) throws Exception {

		return "link";
	}

}

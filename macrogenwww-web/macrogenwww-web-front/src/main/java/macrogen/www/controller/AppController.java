package macrogen.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ AppController.java
 * 개요 : 모바일기기용 임시페이지
 * </pre>
 * 1. 작성일 : 2021. 9. 14. 오후 5:56:33
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/app")
public class AppController extends DefaultController {

	/**
	 * <pre>
	 * main
	 * 1. 개요   : 모바일기기용 임시페이지
	 * 2. 작성자 : eluocnc
	 * </pre>
	 *
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(method = RequestMethod.GET)
	public String main(Model model) throws Exception {

		return "redirect:/" + getLang();
	}

}

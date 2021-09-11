package macrogen.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;

/**
 * <pre>
 * macrogen.www.controller
 *    |_ CompanyController.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 2. 오후 6:36:27
 * 2. 작성자 : eluocnc
 * @version :
 */
@Controller
@RequestMapping("/{langId}/company")
public class CompanyController extends DefaultController {

	@RequestMapping("/introduction/overview")
	public String introductionOverview(@PathVariable LangId langId) throws Exception {
		return getDev() + "/company/introduction/overview." + getLang();
	}

}

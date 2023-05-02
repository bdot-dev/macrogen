package macrogen.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import macrogen.www.enums.LangId;

@Controller
@RequestMapping("/{langId:ko|en}/{dept1}")
public class MenuPathController extends DefaultController {
	
/*	@RequestMapping("")
	public String oneDept(@PathVariable("langId") LangId langId, @PathVariable("dept1") String dept1) throws Exception {
		System.out.println("---------------------------- dept1 실행");
		return getDev() + "/"+ dept1 +"." + getLang();
	}*/

	
	@RequestMapping("/{dept2}")
	public String twoDept(@PathVariable("langId") LangId langId, @PathVariable("dept1") String dept1, @PathVariable("dept2") String dept2) throws Exception {
		System.out.println("---------------------------- dept3 실행");
		return getDev() + "/"+ dept1 + "/"+ dept2 +"." + getLang();
	}
	@RequestMapping("/{dept2}/{dept3}")
	public String threeDept(@PathVariable("langId") LangId langId, @PathVariable("dept1") String dept1, @PathVariable("dept2") String dept2, 
						@PathVariable("dept3") String dept3) throws Exception {
		System.out.println("---------------------------- dept4 실행");
		return getDev() + "/"+ dept1 + "/"+ dept2 + "/"+ dept3 + "." + getLang();
	}
	
	@RequestMapping("/{dept2}/{dept3}/{dept4}")
	public String fourDept(@PathVariable("langId") LangId langId, @PathVariable("dept1") String dept1, @PathVariable("dept2") String dept2, 
					@PathVariable("dept3") String dept3, @PathVariable("dept4") String dept4) throws Exception {
		System.out.println("---------------------------- dept4 실행");
		return getDev() + "/"+ dept1 + "/"+ dept2 + "/"+ dept3 + "/"+ dept4 + "." + getLang();
	}
}

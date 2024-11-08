package macrogen.www.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ErrorController extends DefaultController {
	
	@RequestMapping("/errors")
	public ModelAndView errorPage(HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		Integer errorCode = Integer.parseInt(request.getAttribute("javax.servlet.error.status_code").toString());
		
		String langId= getLang();
		String dev = getDev() ;
		
		if(dev.equals("pc") || dev=="pc") {
			mav.setViewName("errors/error_"+langId);
		}else {
			mav.setViewName("errors/error_mo_"+langId);
		}
		

		return mav;
	}

}

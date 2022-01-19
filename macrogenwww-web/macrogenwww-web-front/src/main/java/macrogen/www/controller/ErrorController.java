package macrogen.www.controller;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;


@Controller
public class ErrorController {
	private static final Logger LOGGER = LoggerFactory.getLogger(ErrorController.class);
	
	@ResponseStatus(HttpStatus.OK)
	@RequestMapping("/error")
    public String Error(HttpServletResponse res) {
		
        LOGGER.debug("http status: "+HttpStatus.OK);
        
        return "error";
    }

}

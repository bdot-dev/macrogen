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
    private static Logger LOGGER = LoggerFactory.getLogger(ErrorController.class);
    
    @RequestMapping("/error")
    @ResponseStatus(HttpStatus.OK)
    public String Error(HttpServletResponse res, Model model) {
    	LOGGER.debug("http status: "+HttpStatus.OK);
        return "error";
    }

}
package admin.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class maincontroller {
	
	@RequestMapping(value="/dang-nhap")
	public ModelAndView loginPage(){
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}

	@RequestMapping(value = "/trangchu")
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("home");
		return mav;
	}
}

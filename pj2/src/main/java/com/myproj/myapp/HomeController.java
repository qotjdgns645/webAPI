package com.myproj.myapp;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@RestController
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, ModelAndView mav) {
		
		mav.setViewName("home");
		
		
		return mav;
	}
	@RequestMapping(value = "/info", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Info(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String name = req.getParameter("userName");
		System.out.println("#####################"+name);
		mav.addObject("Name",name);
		
		mav.setViewName("test");
		
		return mav;
	}
	
}

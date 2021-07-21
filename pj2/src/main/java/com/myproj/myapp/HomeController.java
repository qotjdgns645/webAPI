package com.myproj.myapp;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 * Handles requests for the application home page.
 * https://knight76.tistory.com/entry/JAXB-Http-Client-Example%EC%83%98%ED%94%8C
 * https://skibis.tistory.com/338
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelAndView mav) throws IOException, ParseException {
		//restTemplate 사용
//		RestTemplate restTemplate = new RestTemplate();
//		response = restTemplate.exchange(Url, HttpMethod.GET);
		
		Covid covid = new Covid();
		String res = covid.covid_19();
		
		System.out.println("##### res ##### : "+res);
		JSONParser parser = new JSONParser();
		
		Object obj = parser.parse(res);
		JSONObject jsonObj = (JSONObject) obj;
		
		System.out.println("### : "+ jsonObj);
		
		mav.addObject("res", jsonObj);
		mav.setViewName("home");
		
		return mav;
	}
	
}

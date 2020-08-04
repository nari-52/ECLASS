package com.spring.moonsa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.moonsa.service.InterMypageService;

@Component

@Controller
public class MoonsaController {
	
	@Autowired
	private InterMypageService service;
	
	// 메인페이지 요청
	@RequestMapping(value="/mypageMain.up")
	public ModelAndView index(ModelAndView mav) {
		
		mav.setViewName("forS/main.tiles2");
		
		return mav;
	}
	
}

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
	
	// 메인페이지 요청(학생)
	@RequestMapping(value="/mypageMainS.up")
	public ModelAndView indexS(ModelAndView mav) {
		
		mav.setViewName("forS/main.tiles2");
		
		return mav;
	}
	
	// 출석현황 (학생)
	@RequestMapping(value="/attandS.up")
	public ModelAndView attandS(ModelAndView mav) {
		
		mav.setViewName("forS/attandS.tiles2");
		
		return mav;
	}
	
	// 성적관리 (학생)
	@RequestMapping(value="/gradeS.up")
	public ModelAndView gradeS(ModelAndView mav) {
		
		mav.setViewName("forS/gradeS.tiles2");
		
		return mav;
	}
	
	// 메인페이지 요청(교수)
	@RequestMapping(value="/mypageMainP.up")
	public ModelAndView indexP(ModelAndView mav) {
		
		mav.setViewName("forP/main.tiles2");
		
		return mav;
	}
	
	// 학생관리 (교수)
	@RequestMapping(value="/studentP.up")
	public ModelAndView studentP(ModelAndView mav) {
		
		mav.setViewName("forP/studentP.tiles2");
		
		return mav;
	}
	
	// 출석수정 (교수)
	@RequestMapping(value="/changeAttand.up")
	public ModelAndView changeAttand(ModelAndView mav) {
		
		mav.setViewName("forP/changeAttand.tiles2");
		
		return mav;
	}
	
}

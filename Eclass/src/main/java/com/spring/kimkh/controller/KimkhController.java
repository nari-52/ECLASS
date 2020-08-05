package com.spring.kimkh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.FileManager;
import com.spring.kimkh.service.InterKhService;

@Controller
public class KimkhController {

	@Autowired
	private InterKhService service;
	

		private FileManager fileManager;
	
	
	// 강의를 등록하는 페이지 입니다.
	@RequestMapping(value="/lectureInsert.up")
	public ModelAndView lecture_insert(ModelAndView mav,HttpServletRequest request) {
		
		//int n = service.lecture_insert();
		
		
		mav.setViewName("forP/lectureInsert.tiles2");
		

		return mav;
	}
	
	// 교과목 목록을 보여주는 페이지 입니다. (강의 목록은 ★언지★님이 따로 만들었습니다)
	@RequestMapping(value="/SubjectMatterList.up")
	public ModelAndView SubjectList(ModelAndView mav,HttpServletRequest request) {
		
		mav.setViewName("lecture/SubjectMatterList.tiles1");
		
		return mav;
	}
	
}

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

	@Autowired //Type에 따라서 bean을 주입한다
	private InterKhService service;
	
	// == #150. 파일업로드 및 다운로드를 해주는 FileManager 클래스 의존객체 주입하기 ===
		@Autowired  // Type에 따라 알아서 Bean 을 주입해준다.
		private FileManager fileManager;
	
	
	@RequestMapping(value="/lectureInsert.up")
	public ModelAndView lecture_insert(ModelAndView mav,HttpServletRequest request) {
		
		//int n = service.lecture_insert();
		
		
		mav.setViewName("forP/lectureInsert.tiles2");
		

		return mav;
	}
}

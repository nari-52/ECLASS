package com.spring.kimej.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.kanghm.service.InterEclassService;

//=== #30. 컨트롤러 선언 === 
@Component
/* XML에서 빈을 만드는 대신에 클래스명 앞에 @Component 어노테이션을 적어주면 해당 클래스는 bean으로 자동 등록된다. 
  그리고 bean의 이름(첫글자는 소문자)은 해당 클래스명이 된다.
  여기서는 @Controller 를 사용하므로 @Component 기능이 이미 있으므로 @Component를 명기하지 않아도 BoardController 는 bean 으로 등록되어 스프링컨테이너가 자동적으로 관리해준다. 
*/

@Controller
public class EclassController {

	// === #35. 의존객체 주입하기(DI: Dependency Injection) ===
	@Autowired
	private InterEclassService service;
	
	// 강의 목록 페이지 보여주기 (차수,제목)
	@RequestMapping(value="/lecture/lectureList.up")
	public ModelAndView lectureList(ModelAndView mav) {		
		mav.setViewName("lecture/lectureList.tiles1");		
		return mav;
	}
	
	// 강의 상세 페이지 보여주기 (유튜브영상, 댓글)
	@RequestMapping(value="/lecture/lectureDetail.up")
	public ModelAndView lectureDetail(ModelAndView mav) {		
		mav.setViewName("lecture/lectureDetail.tiles1");		
		return mav;
	}
	
	// 시험 등록 페이지 보여주기 (교수가 시험 게시글 쓰는 것)
	@RequestMapping(value="/exam/examRegister.up")
	public ModelAndView examRegister(ModelAndView mav) {		
		mav.setViewName("exam/examRegister.tiles1");		
		return mav;
	}
	
	// 시험 등록 페이지 !!완료!! 보여주기 (교수가 시험 게시글 쓰는 것)
	@RequestMapping(value="/exam/examRegisterEnd.up")
	public ModelAndView examRegisterEnd(ModelAndView mav) {		
		mav.setViewName("exam/examRegister.tiles1");		
		return mav;
	}
	
	// 시험 출제 페이지 보여주기 (교수가 시험 문제랑 정답 출제하는 것)
	@RequestMapping(value="/exam/examWrite.up")
	public ModelAndView examWrite(ModelAndView mav) {		
		mav.setViewName("exam/examWrite.tiles1");		
		return mav;
	}
	
	// 시험 제출 페이지 보여주기 (학생이 시험 제출하는 것)
	@RequestMapping(value="/exam/examSubmit.up")
	public ModelAndView examSubmit(ModelAndView mav) {		
		mav.setViewName("exam/examSubmit.tiles1");		
		return mav;
	}
	
	
	
	
}

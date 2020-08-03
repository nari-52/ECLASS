package com.spring.kanghm.controller;

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
		
		// 메인페이지 요청
		@RequestMapping(value="/index.up")
		public ModelAndView index(ModelAndView mav) {
			
			mav.setViewName("main/index.tiles1");
			
			return mav;
		}
	
		// 공지사항 목록 
		@RequestMapping(value="/notice.up")
		public ModelAndView notice(ModelAndView mav) {
			
			mav.setViewName("board/notice.tiles1");
			
			return mav;
		}
		
		// 공지사항 글쓰기
		@RequestMapping(value="/addnotice.up")
		public ModelAndView addnotice(ModelAndView mav) {
			
			mav.setViewName("board/addnotice.tiles1");
			
			return mav;
		}
		
		// 공지사항 게시판 글 상세보기
		@RequestMapping(value="/noticeview.up")
		public ModelAndView noticeview(ModelAndView mav) {
			
			mav.setViewName("board/noticeview.tiles1");
			
			return mav;
		}
		
		// 자유게시판 목록
		@RequestMapping(value="/freeboard.up")
		public ModelAndView freeboard(ModelAndView mav) {
			
			mav.setViewName("board/freeboard.tiles1");
			
			return mav;
		}
		
		// 자유게시판 글쓰기
		@RequestMapping(value="/addfreeboard.up")
		public ModelAndView addfreeboard(ModelAndView mav) {
			
			mav.setViewName("board/addfreeboard.tiles1");
			
			return mav;
		}
		
		// 자유게시판 글 상세보기
		@RequestMapping(value="/freeboardview.up")
		public ModelAndView freeboardview(ModelAndView mav) {
			
			mav.setViewName("board/freeboardview.tiles1");
			
			return mav;
		}
		
		
		// Q&A게시판 목록
		@RequestMapping(value="/question.up")
		public ModelAndView question(ModelAndView mav) {
			
			mav.setViewName("board/question.tiles1");
			
			return mav;
		}
		
		// Q&A게시판 글쓰기
		@RequestMapping(value="/addquestion.up")
		public ModelAndView addquestion(ModelAndView mav) {
			
			mav.setViewName("board/addquestion.tiles1");
			
			return mav;
		}
		
		// 관리자페이지
		@RequestMapping(value="/admin.up")
		public ModelAndView test(ModelAndView mav) {
			
			mav.setViewName("admin");
			
			return mav;
		}
				
		// Q&A게시판 글 상세보기
		@RequestMapping(value="/questionview.up")
		public ModelAndView questionview(ModelAndView mav) {
			
			mav.setViewName("board/questionview.tiles1");
			
			return mav;
		}
				
				
}

package com.spring.kimeh.controller;

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
public class DonationController {

	// === #35. 의존객체 주입하기(DI: Dependency Injection) ===
		@Autowired
		private InterEclassService service;
		
		// 메인페이지 요청
		@RequestMapping(value="/index.up")
		public ModelAndView index(ModelAndView mav) {
			
			mav.setViewName("main/index.tiles1");
			
			return mav;
		}
}

package com.spring.kimeh.controller;

import java.util.List;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.kimeh.model.DonStoryVO;
import com.spring.kimeh.service.InterDonationService;

//=== 컨트롤러 선언 === 
@Component
/* XML에서 빈을 만드는 대신에 클래스명 앞에 @Component 어노테이션을 적어주면 해당 클래스는 bean으로 자동 등록된다. 
  그리고 bean의 이름(첫글자는 소문자)은 해당 클래스명이 된다.
  여기서는 @Controller 를 사용하므로 @Component 기능이 이미 있으므로 @Component를 명기하지 않아도 BoardController 는 bean 으로 등록되어 스프링컨테이너가 자동적으로 관리해준다. 
*/

@Controller
public class DonationController {

	// === 의존객체 주입하기(DI: Dependency Injection) ===
		@Autowired
		private InterDonationService service;
		
		// 후원하기 리스트 페이지 
		@RequestMapping(value="/donation/donationList.up")
		public ModelAndView donationList(ModelAndView mav) {
			
			List<DonStoryVO> donstoryList = service.donationList();
			
			mav.addObject("donstoryList",donstoryList);
			mav.setViewName("donation/donationList.tiles1");
			return mav;
		}
		
		// 후원하기 상세페이지(스토리) 
		@RequestMapping(value="/donation/donationStory.up")
		public ModelAndView donationStory(ModelAndView mav, HttpServletRequest request) {
			String donseq = request.getParameter("donseq");
			List<DonStoryVO> donstoryPage = service.donationStory(donseq);
			
			mav.addObject("donstoryPage",donstoryPage);
			mav.setViewName("donation/donationStory.tiles1");
			return mav;
		}
		
		// 후원하기 상세페이지(후원하기) 
		@RequestMapping(value="/donation/donationSupporter.up")
		public ModelAndView donationSupporter(ModelAndView mav, HttpServletRequest request) {
			
			String donseq = request.getParameter("donseq");
			
			mav.setViewName("donation/donationSupporter.tiles1");
			return mav;
		}
		
		// 후원하기 결제페이지 (GET)
		@RequestMapping(value="/donation/donationPayment.up")
		public ModelAndView donationPayment(ModelAndView mav, HttpServletRequest request) {
			
	    	String donseq = request.getParameter("donseq");
	    	
	    	mav.addObject("donseq",donseq);
			mav.setViewName("donation/donationPayment.tiles1");
			return mav;
		}
		
		// 후원하기 결제페이지 (POST)
		@RequestMapping(value="/donation/donationPaymentEnd.up" , method= {RequestMethod.POST})
		public ModelAndView donationPaymentEnd(ModelAndView mav, HttpServletRequest request){
			
			
			mav.setViewName("donation/donationPaymentEnd.tiles1");
			return mav;
		}
		
		
		
		
		
}
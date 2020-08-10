package com.spring.kimeh.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.formula.functions.Index;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.kimeh.model.DonPaymentVO;
import com.spring.kimeh.model.DonStoryVO;
import com.spring.kimeh.service.InterDonationService;
import com.spring.nari.model.MemberVO;

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
			
			//직접 /donation/donationStory.up쳤을 때 --> List로 가게 하는 방법!!!
			if(donseq==null) {
				String msg = "존재하지 않는 페이지입니다"; 
				String loc = "javascript:history.back()";
				
				mav.addObject("msg",msg);
				mav.addObject("loc",loc);
				mav.setViewName("msg");
			}
			else {
				List<DonStoryVO> donstoryPage = service.donationStory(donseq);
				//seq가 없을 때
				if(donstoryPage.isEmpty()) {
					mav.setViewName("donation/donationList.tiles1");
				}
				else {
					mav.addObject("donseq",donseq);
					mav.addObject("donstoryPage",donstoryPage);
					mav.setViewName("donation/donationStory.tiles1");
				}
			}
			
			return mav;
		}
		
		// 후원하기 상세페이지(후원하기) 
		@RequestMapping(value="/donation/donationSupporter.up")
		public ModelAndView donationSupporter(ModelAndView mav, HttpServletRequest request) {
			
			String donseq = request.getParameter("donseq");
			//직접 /donation/donationSupporter.up쳤을 때 --> List로 가게 하는 방법!!!
			if(donseq==null) {
				String msg = "존재하지 않는 페이지입니다"; 
				String loc = "javascript:history.back()";
				
				mav.addObject("msg",msg);
				mav.addObject("loc",loc);
				mav.setViewName("msg");
			}
			else {
				List<DonStoryVO> donsupporterPage = service.donationSupporter(donseq);
				
				if(donsupporterPage.isEmpty()) {
					mav.setViewName("donation/donationList.tiles1");
					
				}else {
					mav.addObject("donseq",donseq);
					mav.addObject("donsupporterPage",donsupporterPage);
					mav.setViewName("donation/donationSupporter.tiles1");
				}
			}
			return mav;
		}
		
		// 후원하기 결제페이지 (GET)
		@RequestMapping(value="/donation/donationPayment.up")
		public ModelAndView requiredLogin_donationPayment(HttpServletRequest request,HttpServletResponse response, ModelAndView mav) {
			
			String donseq = request.getParameter("donseq");	//조회하고자 하는 글번호 
			HttpSession session = request.getSession();
			MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
			request.setAttribute("loginuser", loginuser);
			
			if(donseq==null) {
				String msg = "존재하지 않는 페이지입니다"; 
				String loc = "javascript:history.back()";
				
				mav.addObject("msg",msg);
				mav.addObject("loc",loc);
				mav.setViewName("msg");
			}
			else {
		    	mav.addObject("donseq",donseq);
				mav.setViewName("donation/donationPayment.tiles1");
			}
			return mav;
		}
		
		// 후원하기 결제페이지 (POST)
		@RequestMapping(value="/donation/donationPaymentEnd.up" , method= {RequestMethod.POST})
		public String pointPlus_donationPaymentEnd(HashMap<String,String> paraMap,HttpServletRequest request, DonPaymentVO donpaymentvo) throws Throwable{
			
			HttpSession session = request.getSession();
			MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
			request.setAttribute("loginuser", loginuser);	
			String name = request.getParameter("name");
			String payment = request.getParameter("payment");
			String donSeq = request.getParameter("fk_donSeq");
								    	
			//결제하기 (insert) + 포인트 차감 (update)
			int n = service.donationPayment(donpaymentvo);	
			
			//포인트 주기 (update)
			paraMap.put("userid", donpaymentvo.getFk_userid());	
	    	if(n==1) { //결제가 성공되어지면 -> 후원서포터 페이지로 이동 
	    		paraMap.put("pointPlus", String.valueOf(((Integer.parseInt(donpaymentvo.getPayment())*0.1)))); // after Advice용 (글을 작성하면 포인트 100을 주기로 한다)
	    		request.setAttribute("name", name);
	    		request.setAttribute("payment", payment);
	    		request.setAttribute("fk_donSeq", donSeq);
	    		return "redirect:/donation/donationSupporter.up?donseq="+donSeq;
	    	}
	    	else { //결재 실패시 
	    		paraMap.put("pointPlus", "0");
	    		return "redirect:/donation/donatqionPayment.up?donseq="+donSeq;
	    	}				
		}
		
		
		@RequestMapping(value="/donation/pay.up")
		public ModelAndView Pay(ModelAndView mav, HttpServletRequest request) {
			
			String recieve = request.getParameter("recieve");
			
			mav.addObject("recieve",recieve);
			mav.setViewName("pay");
			return mav;
			
		}
		
		
		
		
}
package com.spring.moonsa.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.moonsa.model.AttandVO;
import com.spring.moonsa.service.InterMypageService;
import com.spring.nari.model.MemberVO;

@Component

@Controller
public class MoonsaController {
	
	@Autowired
	private InterMypageService service;
	
	// 메인페이지 요청
	@RequestMapping(value="/mypageMain.up")
	public ModelAndView indexS(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		HashMap<String, String> paraMap = new HashMap<>();
	    paraMap.put("identity", loginuser.getIdentity());
	    paraMap.put("userid", loginuser.getUserid());
		
	    MemberVO membervo = service.getSInfo(paraMap); // 로그인한 정보 불러오기
	    List<HashMap<String, String>> subjectList = service.getSubjectList(paraMap); // 교과목 리스트 불러오기
	    
	    mav.addObject("subjectList", subjectList);
	    mav.addObject("membervo", membervo);
	    
		if("1".equals(loginuser.getIdentity())) {
			mav.setViewName("forS/main.tiles2");
		}
		if("2".equals(loginuser.getIdentity())) {
			mav.setViewName("forP/main.tiles2");
		}
		
		return mav;
	}
	
	// 출석현황 (학생)
	@RequestMapping(value="/attandS.up")
	public ModelAndView attandS(ModelAndView mav, HttpServletRequest request) {
		
		String subjectSelect = request.getParameter("subjectSelect");
		
		if(subjectSelect == null) {
			subjectSelect = "0";
		}
		
		HttpSession session = request.getSession();
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		HashMap<String, String> paraMap = new HashMap<>();
	    paraMap.put("identity", loginuser.getIdentity());
	    paraMap.put("userid", loginuser.getUserid());
	    paraMap.put("subjectSelect", subjectSelect);
	    
	    List<HashMap<String, String>> subjectList = service.getSubjectList(paraMap); // 교과목 리스트 불러오기
	    
	    List<AttandVO> attandList = service.getAttandList(paraMap); // 해당 학생의 출석 리스트 불러오기
	    
	    String attandOX = service.getAttandOX(paraMap); // 총 출석 수 가져오기
	    
	    mav.addObject("subjectList", subjectList);
	    mav.addObject("attandList", attandList);
	    mav.addObject("attandOX", attandOX);
		mav.setViewName("forS/attandS.tiles2");
		
		return mav;
	}
	
	// 성적관리 (학생)
	@RequestMapping(value="/gradeS.up")
	public ModelAndView gradeS(ModelAndView mav, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO loginuser = (MemberVO) session.getAttribute("loginuser");
		
		String userid = loginuser.getUserid();
		
		mav.setViewName("forS/gradeS.tiles2");
		
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

package com.spring.nari.service;

import java.util.HashMap;

import com.spring.nari.model.MemberVO;

public interface InterMemberService {

	MemberVO getLoginMember(HashMap<String, String> paraMap); // 로그인 처리하기

	String idDuplicateCheck(String userid); // AJAX를 이용하여 회원가입 아이디 중복검사

	int registerMember(MemberVO mvo); // 회원가입 하기

	String mobileDuplicateCheck(String mobile); // AJAX를 이용하여 휴대전화 중복검사

	String idFind(HashMap<String, String> paraMap); // 아이디 찾기

}

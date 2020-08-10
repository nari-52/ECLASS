package com.spring.nari.model;

import java.util.HashMap;

public interface InterMemberDAO {

	// 로그인 처리하기
	MemberVO getLoginMember(HashMap<String, String> paraMap);

	// AJAX를 이용하여 회원가입 아이디 중복검사
	String idDuplicateCheck(String userid);

	// 회원가입 하기
	int registerMember(MemberVO mvo);

	// AJAX를 이용하여 휴대전화 중복검사
	String mobileDuplicateCheck(String mobile);

	// 아이디 찾기
	String idFind(HashMap<String, String> paraMap);

}

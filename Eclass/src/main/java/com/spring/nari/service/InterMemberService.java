package com.spring.nari.service;

import java.util.HashMap;

import com.spring.nari.model.MemberVO;

public interface InterMemberService {

	MemberVO getLoginMember(HashMap<String, String> paraMap); // 로그인 처리하기

}

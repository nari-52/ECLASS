package com.spring.nari.model;
import java.util.HashMap;
public interface InterMemberDAO {

	// 로그인 처리하기
	MemberVO getLoginMember(HashMap<String, String> paraMap);

}

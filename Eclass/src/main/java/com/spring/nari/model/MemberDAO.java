package com.spring.nari.model;

import java.util.HashMap;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

// DAO 선언
@Repository
public class MemberDAO implements InterMemberDAO {

	// 의존 객체 주입하기
	@Resource
	private SqlSessionTemplate sqlsession;
	
	
	// 로그인 처리하기
	@Override
	public MemberVO getLoginMember(HashMap<String, String> paraMap) {
	
		MemberVO loginuser = sqlsession.selectOne("member.getLoginMember", paraMap);
		
		return loginuser;
	}

}

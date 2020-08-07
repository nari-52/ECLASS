package com.spring.moonsa.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDAO implements InterMypageDAO {

	@Resource
	private SqlSessionTemplate sqlsession;
	
	
	
}

package com.spring.kimej.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

//=== #32. DAO 선언 ===
@Repository  
public class ExamDAO implements InterExamDAO{
	
	// === #33. 의존객체 주입하기(DI: Dependency Injection) ===
	
	@Resource
	private SqlSessionTemplate sqlsession;
	
}

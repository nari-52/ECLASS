package com.spring.kimej.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.kimej.model.InterEclassDAO;

//=== Service 선언 === 
//트랜잭션 처리를 담당하는곳 , 업무를 처리하는 곳, 비지니스(Business)단
@Service  
public class EclassService implements InterEclassService {

	// === 의존객체 주입하기(DI: Dependency Injection) ===
	@Autowired
	private InterEclassDAO dao;
	
}

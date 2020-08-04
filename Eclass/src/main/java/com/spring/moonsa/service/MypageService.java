package com.spring.moonsa.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.moonsa.model.InterMypageDAO;

@Service
public class MypageService implements InterMypageService {

	@Autowired
	private InterMypageDAO dao;
	
}

package com.spring.kimkh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.kimkh.model.InterKhDAO;

@Service
public class KhService implements InterKhService {

	@Autowired
	private InterKhDAO dao;
	
	@Override
	public int lecture_insert() {

		//int n = dao.lecture_insert();
		
		return 0;
	}

}

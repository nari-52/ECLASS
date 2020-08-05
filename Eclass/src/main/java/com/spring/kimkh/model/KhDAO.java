package com.spring.kimkh.model;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class KhDAO implements InterKhDAO {

	@Resource
	private SqlSessionTemplate sqlsession;
	
	@Override
	public int test_insert() {

		
		
		return 0;
	}

}

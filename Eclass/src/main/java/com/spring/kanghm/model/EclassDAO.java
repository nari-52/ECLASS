package com.spring.kanghm.model;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.spring.kimeh.model.DonStoryVO;

//=== #32. DAO 선언 ===
@Repository  
public class EclassDAO implements InterEclassDAO{
	
	// === #33. 의존객체 주입하기(DI: Dependency Injection) ===
	
	@Resource
	private SqlSessionTemplate sqlsession;

	//후원리스트 보여주기 
	@Override
	public List<DonStoryVO> donationList() {
		List<DonStoryVO> donstoryList = sqlsession.selectList("donation.donationList");
		return donstoryList;
	}
}

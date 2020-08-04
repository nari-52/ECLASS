package com.spring.kimeh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.kimeh.model.DonStoryVO;
import com.spring.kimeh.model.InterDonationDAO;

//=== #31. Service 선언 === 
//트랜잭션 처리를 담당하는곳 , 업무를 처리하는 곳, 비지니스(Business)단
@Service  
public class DonationService implements InterDonationService {

	// === #34. 의존객체 주입하기(DI: Dependency Injection) ===
	@Autowired
	private InterDonationDAO dao;
	
	//후원리스트 보여주기 
	@Override
	public List<DonStoryVO> donationList() {
		List<DonStoryVO> donstoryList = dao.donationList();
		return donstoryList;
	}
	
	//후원 스토리 보여주기 
	@Override
	public DonStoryVO donationStory(String donseq) {
		DonStoryVO donstoryPage = dao.donationStory(donseq);
		return donstoryPage;
	}
}

package com.spring.kimeh.model;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.spring.nari.model.MemberVO;

//=== #32. DAO 선언 ===
@Repository  
public class DonationDAO implements InterDonationDAO{
	
	// === #33. 의존객체 주입하기(DI: Dependency Injection) ===
	
	@Resource
	private SqlSessionTemplate sqlsession;
	
	//후원리스트 보여주기 
	@Override
	public List<DonStoryVO> donationList() {
		List<DonStoryVO> donstoryList = sqlsession.selectList("donation.donationList");
		return donstoryList;
	}
	
	//후원 스토리 보여주기 
	@Override
	public List<DonStoryVO> donationStory(String donseq) {
		List<DonStoryVO> donstoryPage = sqlsession.selectList("donation.donationStory", donseq);
		return donstoryPage;
	}

	//1. 결제하기 
	@Override
	public int donationPayment(DonPaymentVO donpaymentvo) {
		int n = sqlsession.insert("donation.donationPayment", donpaymentvo);
		return n;
	}

	//2. 포인트 차감
	@Override
	public int updateUsePoint(DonPaymentVO donpaymentvo) {
		int n = sqlsession.update("donation.updateUsePoint", donpaymentvo);
		return n;
	}
	
	//3. 포인트주기 
	@Override
	public void pointPlus(HashMap<String, String> paraMap) {
			sqlsession.update("donation.pointPlus",paraMap);		
	}


	//후원 서포터 페이지 보여주기 
	@Override
	public List<DonStoryVO> donationSupporter(String donseq) {
		List<DonStoryVO> donsupporterPage = sqlsession.selectList("donation.donationSupporter",donseq);
		return donsupporterPage;
	}

	
}

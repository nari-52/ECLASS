package com.spring.kimeh.model;

import java.util.HashMap;
import java.util.List;

import com.spring.nari.model.MemberVO;

public interface InterDonationDAO {

	List<DonStoryVO> donationList(); //후원리스트 보여주기 

	List<DonStoryVO> donationStory(String donseq); //후원 스토리 보여주기 

	void pointPlus(HashMap<String, String> paraMap); //포인트주기 

	int donationPayment(DonPaymentVO donpaymentvo); //결제하기

	int updateUsePoint(DonPaymentVO donpaymentvo); //포인트 차감

	List<DonStoryVO> donationSupporter(String donseq); //후원 서포터 페이지 보여주기

	
}

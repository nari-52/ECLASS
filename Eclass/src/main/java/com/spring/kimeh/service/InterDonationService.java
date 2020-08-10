package com.spring.kimeh.service;

import java.util.HashMap;
import java.util.List;

import com.spring.kimeh.model.DonPaymentVO;
import com.spring.kimeh.model.DonStoryVO;
import com.spring.nari.model.MemberVO;

public interface InterDonationService {

	List<DonStoryVO> donationList(); //후원리스트 보여주기 

	List<DonStoryVO> donationStory(String donseq); //후원 스토리 보여주기 

	void pointPlus(HashMap<String, String> paraMap); //포인트 주기

	int donationPayment(DonPaymentVO donpaymentvo) throws Throwable; //결제하기(insert)

	List<DonStoryVO> donationSupporter(String donseq); //후원 서포터 보여주기

	
}

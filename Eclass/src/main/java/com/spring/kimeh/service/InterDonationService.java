package com.spring.kimeh.service;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.List;

import com.spring.kimeh.model.DonPaymentVO;
=======
import java.util.List;

>>>>>>> d6f3a283645de32233a1037ce7ee95befc2c84d3
import com.spring.kimeh.model.DonStoryVO;

public interface InterDonationService {

<<<<<<< HEAD
	List<DonStoryVO> donationList(HashMap<String, String> paraMap); //후원리스트 보여주기 

	List<DonStoryVO> donationStory(String donseq); //후원 스토리 보여주기 

	void pointPlus(HashMap<String, String> paraMap); //포인트 주기

	int donationPayment(DonPaymentVO donpaymentvo) throws Throwable; //결제하기(insert)

	List<DonStoryVO> donationSupporter(String donseq); //후원 서포터 보여주기

	int getTotalCount(HashMap<String, String> paraMap); //총페이지수 알아오기

	List<String> wordSearchShow(HashMap<String, String> paraMap); //검색어 자동완성 기능 

	List<DonStoryVO> donationSupporterMoreJSON(HashMap<String, String> paraMap); //서포터 더보기 페이징 

	
=======
	List<DonStoryVO> donationList(); //후원리스트 보여주기 
>>>>>>> d6f3a283645de32233a1037ce7ee95befc2c84d3
}

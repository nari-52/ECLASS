package com.spring.kimeh.service;

import java.util.List;

import com.spring.kimeh.model.DonStoryVO;

public interface InterDonationService {

	List<DonStoryVO> donationList(); //후원리스트 보여주기 

	DonStoryVO donationStory(String donseq); //후원 스토리 보여주기 
}

package com.spring.kimeh.model;

import java.util.List;

public interface InterDonationDAO {

	List<DonStoryVO> donationList(); //후원리스트 보여주기 

	DonStoryVO donationStory(String donseq); //후원 스토리 보여주기 
}

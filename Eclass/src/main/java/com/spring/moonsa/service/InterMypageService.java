package com.spring.moonsa.service;

import java.util.HashMap;
import java.util.List;

import com.spring.moonsa.model.AttandVO;
import com.spring.nari.model.MemberVO;

public interface InterMypageService {

	MemberVO getSInfo(HashMap<String, String> paraMap); // 로그인한 학생 정보 불러오기

	List<HashMap<String, String>> getSubjectList(HashMap<String, String> paraMap); // 교과목 리스트 불러오기

	List<AttandVO> getAttandList(HashMap<String, String> paraMap); // 해당 학생의 출석 리스트 불러오기

	String getAttandOX(HashMap<String, String> paraMap); // 총 출석 수 가져오기

}

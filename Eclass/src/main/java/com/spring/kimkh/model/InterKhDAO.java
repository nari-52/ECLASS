package com.spring.kimkh.model;

import java.util.HashMap;
import java.util.List;

public interface InterKhDAO {



	int MatterInsert(LecutreMatterInsertVO lmiv);//교과목 강의 등록하기

	List<LecutreMatterInsertVO> selectMatterList(LecutreMatterInsertVO lmiv);//교과목 목록 보여주기

	LecutreMatterInsertVO selectOneMatterList(String subseq);//교과목 상세보기

	int sugangInsert(HashMap<String,String> paraMap);//수강신청 버튼 클릭시 학생마이페이지에 insert 시키기



}

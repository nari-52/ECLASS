<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String ctxPath = request.getContextPath();
%>

<style>
	#wholeNotice{
		width: 1080px;
		margin: 0 auto;
		border: solid 1px black;
		background-color: #5E5E5E;
	}
	
	tr,th,td{
		border: solid 1px black;
		border-collapse: collapse;
		text-align: center;
		padding: 20px;
	}
</style>

<div id="wholeNotice">
	<div style="text-align: center;">
		<h3 style="color: white; font-weight: bold;">Q&A</h3>
	</div>	
	<br>
	
	<span style="margin-left: 40px; color: white;">Total: 7</span>
	
	<div>
		<table style="margin: 0 auto; width: 1000px; background-color: white;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트[비밀글]</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트[비밀글]</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트[비밀글]</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
			<tr>
				<td>1</td>
				<td>Q&A 게시판 테스트</td>
				<td>홍길동</td>
				<td>2020.07.22</td>
			</tr>
			
		</table>
	</div>
	
	<form name="searchFrm" style="margin-top: 20px; margin-left: 40px;">
		<select name="searchType" id="searchType" style="height: 26px;">
			<option value="subject">글제목</option>
			<option value="name">글쓴이</option>
		</select>
		<input type="text" name="searchWord" id="searchWord" size="40" autocomplete="off" /> 
		<button type="button">검색</button>
	</form>
	
	<div>
		<button type="button" style="margin-left: 980px;">
			<a href="<%=ctxPath%>/addquestion.up">글쓰기</a>
		</button>
	</div>	
	<br>
	
	<div style="text-align: center;">
		<span style="color: white; font-size: 16pt; font-weight: bold;"> 1 2 3 4 5 6 7 8 9 10 다음</span>
	</div>
	<br>
	
</div>
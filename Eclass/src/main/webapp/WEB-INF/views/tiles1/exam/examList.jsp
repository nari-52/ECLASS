<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<%	String ctxPath = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/examList.css" />

<div id="contentsWrap">
	
	<form name="examSearchFrm">
		<div class="exam-search" align="right">
			<input type="text" id="searchWord" name="searchWord" />
			<button type="button" onclick="goSearch();">검색</button>
		</div>
	</form>
	
	<div class="border-line-box"></div>

	<div class="tbl-wrap exam-list">
		<table>
			<colgroup>
				<col style="width: 75px;">
				<col style="width: 121px;">
			</colgroup>
			<thead>
				<tr>
					<th id="tbl-no" class="tbl-name">번호</th>
					<th id="tbl-title" class="tbl-name">제목</th>
					<th id="tbl-day" class="tbl-name">시험응시일</th>
				</tr>
			</thead>
			<tbody>
					<tr class="examList">
						<td id="tbl-no" class="seq">시퀀스</td>
						<td id="tbl-title">제목</td>
						<td id="tbl-day">시험일</td>
					</tr>
					<tr class="examList">
						<td id="tbl-no" class="seq">시퀀스2</td>
						<td id="tbl-title">제목2</td>
						<td id="tbl-day">시험일2</td>
					</tr>
			</tbody>
		</table>
	</div>

</div>
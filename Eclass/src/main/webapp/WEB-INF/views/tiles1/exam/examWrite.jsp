<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<%	String ctxPath = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/examWrite.css" />

<script>

	document.addEventListener("DOMContentLoaded", function(event) { 

		var cnt = 0;
		var plusQ = document.getElementById("plusQ");
		var minusQ = document.getElementById("minusQ");
		
		plusQ.addEventListener('click', function() {
			cnt++;
			makeQ(cnt);			
		});
		
		minusQ.addEventListener('click', function() {
			cnt--;
			makeQ(cnt);			
		});
		
	});


	function makeQ(cnt) {
		
		var html = "";
		var goplus = document.getElementById("goplus");
		
		for(var i=0; i<cnt; i++) {			
			html += "<br><br><div class='border-line-box'></div><br><span>문제 </span><input type='text' id='question' name='question' style='height: 40px; width: 1000px;'>";
			html += "<br><br>";
			html += "<span>정답 </span><input type='text' name='answer' style='height: 40px; width: 1000px;'/>";
		}
		
		goplus.innerHTML = html;
		
	}

</script>

<div id="contentsWrap" style="width: 1080px; margin: 0 auto;">

	<div id="register-title">시험 문제 출제</div>
	<br>
	<button type="button" id="plusQ">문제 추가</button>
	<button type="button" id="minusQ">문제 삭제</button>
	<br><br>
	<form id="registerFrm" name="registerFrm">
		<div id="goplus"></div>
	</form>
	
	<div id="buttons">
		<button type="button" onclick="goSubmit();">제출</button>
		<button type="reset">취소</button>
	</div>
	
	<div style="clear: both; margin-bottom: 50px;"></div>

</div>






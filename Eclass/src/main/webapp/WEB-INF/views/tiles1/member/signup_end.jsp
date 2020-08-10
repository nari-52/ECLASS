<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	
	div#singupend_container {
		border: solid 1px gray;
		max-width: 1080px;
		height: 100px;
		margin: 0 auto;
	}
	
	h1#head_main {
		color: #00bcd4; /* 메인컬러  */
		margin: 0 auto;
		text-align: center;
		width: 100%;
		height: 129px;
		font-size: 25pt;
		padding-top: 25px;
	}
	
	/* 로그인 만들기  ----------------------------------------------------- */
	
	div#singupend_content {
		/* border: solid 1px red; */
		width: 100%;
		height: 800px;
		background: #fafafa;
		display: inline-block;
		margin: 0 auto;
	}
	
	/* 로그인 배경 만들기 */
	div#singupend_back {
		border: solid 1px  #ddd;
		width: 1080px;
		height: 450px;
		background: white;
		margin: 0 auto;
		margin-top: 50px;
		padding-top: 50px; /* form 태그 위에 padding 주기 */
	}	
	div#singupend {
		/* border: solid 1px red; */
		width: 800px;
		margin: 0 auto;
	}
	
	
	ul.input_text {
		list-style: none;
		padding: 0;
		border: solid 0px;
	}
	


	div#loginbtn{
		border: solid 1px blue;
		margin: 0 auto;
		width: 320px;
		height: 30px;
		background-color: #00bcd4;
		color: white;
		font-size: 12pt;
		font-weight: bold;
		text-align: center;
		padding-top: 10px;
		display: inline block;
	}
	
	div#mainbtn{
		border: solid 1px blue;
		margin: 0 auto;
		width: 320px;
		height: 30px;
		background-color: #00bcd4;
		color: white;
		font-size: 12pt;
		font-weight: bold;
		text-align: center;
		padding-top: 10px;
		display: inline block;	
	}

</style>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){ 
		
		// 로그인 버튼 클릭 시 
		$("#loginbtn").click(function(){ 
			location.href="<%= ctxPath%>/login/login.up";
		});
		
		// 메인으로 버튼 클릭 시
		$("#mainbtn").click(function(){ 
			location.href="<%= ctxPath%>/index.up";
		});
		
		
	}); // end of $(document).ready()---------------------------	
	

	


</script>

<body>
	<div id="singupend_container" >
		<section>
			<div id="singupend_head">
				<h1 id="head_main">로그인</h1>
			</div>
		</section>
	</div>
	
	<div id="singupend_content">	
		<div id="singupend_back">
			<div id="singupend">
			
				<div style="text-align: center; font-size: 16pt; font-weight: bold; margin-bottom: 10px;">ECLASS 신규 회원가입이 완료되었습니다.</div>
				<div style="text-align: center; font-size: 12pt; font-weight: bold; color: gray; margin-bottom: 15px;"> ECLASS 회원이 되신 것을 진심으로  축하합니다.</div>
				
				<hr>
				<table>
						<tr>
							<th>
								이름
							</th>
							<td>
								<input type="text" name="name" id="name" value="${name}" class="requiredInfo inputbox_short" readonly /> 
							</td>
						</tr>
						
						<tr>
							<th>
								아이디
							</th>
							<td>
								<input type="text" name="userid" id="userid" value="${userid}" class="requiredInfo inputbox_short" /> 
							</td>
						</tr>
												
						<tr>
							<th>
								대학명
							</th>
							<td>
								<input type="text" name="university" id="university" value="${university}" class="requiredInfo inputbox_short" /> 
							</td>
						</tr>
						
						<tr>
							<th>
								학과
							</th>
							<td>
								<input type="text" name="major" id="major" value="${major}" class="requiredInfo inputbox_short" /> 
							</td>
						</tr>
						
						<tr>
							<th>
								학번
							</th>
							<td>
								<input type="text" name="student_num" id="student_num" value="${student_num}" class="requiredInfo inputbox_short" /> 
							</td>
						</tr>
						
						<tr>
							<th>
								휴대전화
							</th>
							<td>
								<input type="text" name="mobile" id="mobile" value="${mobile}" class="requiredInfo inputbox_short" />
							</td>
						</tr>
						
						
					</table>
				
				<div id="loginbtn" >로그인</div>
				<div id="mainbtn" >메인으로</div>
		
			</div>

		</div>
		<c:if test="${sessionScope.loginuser != null}">
			<div style="float: right; margin-top: 0.5%; border: solid 0px red;">
			  <span style="color: navy; font-weight: bold; font-size: 10pt;">${sessionScope.loginuser.name}</span> 님 로그인중..
			</div>
		</c:if>
		
	</div>
</body>
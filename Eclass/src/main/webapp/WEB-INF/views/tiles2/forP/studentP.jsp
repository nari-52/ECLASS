<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
#test{
	display: inline-block;
	border: solid 0px red;
	margin: 0 20px;
	height: 500px;
}
#changeG{
	border: solid 0px red;
	background-color: #fafafa;
	margin: 20px;
	font-weight: bold;
}
</style>
<script type="text/javascript">

	$(document).ready(function(){
		
		
	});

	function func_changeG(){
		$.ajax({
			url:"/eclass/studentP.up",
			success:function(text){
				
				var html = "<div id='changeG'>";
					html +="<span>OOO학생 학점 수정</span><br/>";
					
					html +="A&nbsp;&nbsp;&nbsp;B&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;D&nbsp;&nbsp;&nbsp;F<br/>";
					html +="<input type='radio' name='grade'/>&nbsp;&nbsp;";
					html +="<input type='radio' name='grade'/>&nbsp;&nbsp;";
					html +="<input type='radio' name='grade'/>&nbsp;&nbsp;";
					html +="<input type='radio' name='grade'/>&nbsp;&nbsp;";
					html +="<input type='radio' name='grade'/><br/>";
					
					html +="<button type='button'>수정하기</button>";
					html +="</div>";
				
				$("#changeG").html(html);		   
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
	}
	
	function go_changeA() {
		location.href="<%= request.getContextPath()%>/changeAttand.up";
	}
</script>
</head>
<body>
	<div id="test">
	  <h2>OOO 교수님</h2>
	  <h3>과목명 : HTML의 이해</h3>
		<table id="tblcss" >
			<tr style="background-color: #00BCD4;">
				<th style="color: white;">체크박스</th>
				<th style="color: white;">학생명</th>
				<th style="color: white;">출석률</th>
				<th style="color: white;">시험점수</th>
				<th style="color: white;">학점</th>
			</tr>
			<tr>
				<td><input type="radio" name="name"/></td>
				<td>김은혜</td>
				<td>80%</td> 
				<td>100</td> 
				<td>A</td> 
			</tr>
			<tr>
				<td><input type="radio" name="name"/></td>
				<td>문상아</td>
				<td>96%</td> 
				<td>90</td> 
				<td>B</td> 
			</tr>
			<tr>
				<td><input type="radio" name="name"/></td>
				<td>김건형</td>
				<td>70%</td> 
				<td>80</td> 
				<td>C</td> 
			</tr>
		</table>
		<button type="button" onclick="go_changeA();">출석관리</button>
		<button type="button" onclick="func_changeG();">학점수정</button>
		<div id="changeG"></div>
	</div> 
</body>
</html>
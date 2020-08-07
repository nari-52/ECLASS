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

</style>
<script type="text/javascript">

	$(document).ready(function(){
		
		var total = $("#total").text();
		var html = 10*total+"%";
				
		$("#persent").html(html);
		
	});

</script>
</head>
<body>
	<div id="test">
	  	<h2>OOO 교수님</h2>
	  	<h3>과목명 : HTML의 이해</h3>
		<select name="StudentSelect" id="StudentSelect">
			<option>학생명</option>
			<option>문상아</option>   
			<option>김은혜</option>
			<option>김건형</option>
		</select>
		<table id="tblcss" >
			<tr style="background-color: #00BCD4;">
				<th style="color: white;">챕터</th>
				<th style="color: white;">출석현황</th>
			</tr>
			<tr>
				<td>1강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>2강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>3강</td>
				<td>X</td>
			</tr>
			<tr>
				<td>4강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>5강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>6강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>7강</td>
				<td>X</td>
			</tr>
			<tr>
				<td>8강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>9강</td>
				<td>O</td>
			</tr>
			<tr>
				<td>10강</td>
				<td>O</td>
			</tr>
			<tr>
				<td style="background-color: #E5E5E5;">총 출석수</td>
				<td id="total">8</td><!-- count로 총 개수 알아오기/ select count(*) from tbl_attendanct where attend = 1(출석) -->
			</tr>
			<tr>
				<td style="background-color: #E5E5E5;">출석률 (%)</td>
				<td id="persent"></td>
			</tr>
		</table>
		<select name="lectureSelect" id="lectureSelect">
			<option>1강</option>
			<option>2강</option>   
			<option>3강</option>
		</select>
		<select name="attandSelect" id="lectureSelect">
			<option>O</option>
			<option>X</option>   
		</select>
		<button type="button">수정하기</button>
		<button type="button" onclick="location.href='javascript:history.back()'">이전으로</button>
	</div>  
</body>
</html>
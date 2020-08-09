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
		
		
	});

</script>
</head>
<body>
	<div id="test">
	  <h2>${sessionScope.loginuser.name} 님의 성적</h2>
		<table id="tblcss" >
			<tr style="background-color: #00BCD4;">
				<th style="color: white;">강의명</th>
				<th style="color: white;">학점</th>
			</tr>
			<tr>
				<td>코딩과 HTML</td>
				<td>A</td> <!-- A=4, B=3, C=2, D=1, F=0 -->
			</tr><!-- option태그 select로 하기 -->
			<tr>
				<td>혁명적인 변화</td>
				<td>B</td>
			</tr>
			<tr>
				<td>통계에 기반한 학습</td>
				<td>A</td>
			</tr>
			<tr>
				<td style="background-color: #E5E5E5;">총 합계</td>
				<td>11</td>
			</tr>
			<tr>
				<td style="background-color: #E5E5E5;">학점 평균</td>
				<td>3.67</td>
			</tr>
		</table>
	</div>  
</body>
</html>
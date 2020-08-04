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
.sidecss {
	border-right: solid 1px gray;
	margin: 10px;
	padding-right: 10px;
	margin-right: 10px;
}
</style>
</head>
<body>
	<div id="test">
	  <h2>OOO 교수님의 마이페이지 입니다</h2>
	  	<table>
			<tr>
				<td class="sidecss">학교이름</td>
				<td>이클래스대학교</td>
			</tr>
			<tr>
				<td class="sidecss">학과</td>
				<td>러시아어문학과</td>
			</tr>
			<tr>
				<td class="sidecss">포인트</td>
				<td>300</td>
			</tr>
			<tr>
				<td class="sidecss">강의 목록</td>
				<td>HTML의 이해<br/>
					JAVA의 응용<br/>
					알고리즘의 이해
				</td>
			</tr>
		</table>
	</div>  
</body>
</html>
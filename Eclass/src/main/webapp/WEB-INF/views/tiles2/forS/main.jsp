<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
#container{
	width: 1080px;
	border: solid 1px gray;
}

.main {
  margin-left: 140px; /* Same width as the sidebar + left position in px */
  font-size: 20px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.sidecss {
	border-right: solid 1px green;
	margin: 10px;
}
</style>
</head>
<body>
	<div class="container">
	  <h2>OOO 님의 마이페이지 입니다</h2>
	  	<table>
			<tr>
				<td class="sidecss">학교이름</td>
				<td>이클래스대학교</td>
			</tr>
			<tr>
				<td class="sidecss">학번</td>
				<td>201410402</td>
			</tr>
			<tr>
				<td class="sidecss">이메일</td>
				<td>asdf1234@naver.com</td>
			</tr>
			<tr>
				<td class="sidecss">연락처</td>
				<td>010-1234-5678</td>
			</tr>
			<tr>
				<td class="sidecss">포인트</td>
				<td>300</td>
			</tr>
		</table>
	</div>  
</body>
</html>
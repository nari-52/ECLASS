<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<style type="text/css">

	.sidenav {
	  width: 130px;
	  background: #fafafa;
	  overflow-x: hidden;
	  padding: 8px 0;
	  display: inline-block;
	  border: solid 0px blue;
	  float: left;
	}
	
	.sidenav a {
	  padding: 6px 8px 6px 16px;
	  text-decoration: none;
	  font-size: 17px;
	  color: #00BCD4;
	  display: block;
	}
	
	.sidenav a:hover {
	  color: #064579;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
	}); // end of ready(); ---------------------------------
</script>
<!-- 
	<div class="sidenav">
	  <a href="<%=ctxPath%>/mypageMainS.up">마이페이지</a>
	  <a href="<%=ctxPath%>/attandS.up">출석현황</a>
	  <a href="<%=ctxPath%>/gradeS.up">성적관리</a>
	  <a href="<%=ctxPath%>/">정보수정</a>
	</div>
 -->
	<div class="sidenav">
	  <a href="<%=ctxPath%>/mypageMainP.up">마이페이지</a>
	  <a href="<%=ctxPath%>/studentP.up">학생관리</a>
	  <a href="<%=ctxPath%>/">시험제출</a>
	  <a href="<%=ctxPath%>/">강의등록</a>
	  <a href="<%=ctxPath%>/">정보수정</a>
	</div>

    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
	String ctxPath = request.getContextPath(); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= ctxPath %>/css/style.css" />
<title>후원하기 메인리스트 페이지</title>
</head>
<style>
    .Mycontainer{
        border: solid 1px #ccc;
        width: 1080px;
        margin: 0 auto;
        margin-top:0px;
        /* background-color: #FAFAFA; */
    }
	
    div.contentLine{
        padding-top: 3px;
        /* width: 120px; */
        width: 1080px;
        border-bottom: solid 3px #00BCD4;       
    }
	div#smallT, .productList {
		border: solid 0px #ccc;
		display: inline-block;
		margin: 30px;
		margin-top: 20px;
	}
	
	.smallT{
		color: purple;
	    border-bottom: 2px solid 00BCD4;
	    width: 70px;
		font-weight: normal;
		font-size: 15px;
		margin-top: 10px;
	}	
    
	.contents h3{
		margin-left: 30px;
	}
	.sub {
		font-size: 12pt;
		padding: 0px 15px;
		cursor: pointer;
		color: gray;
	} 
	#pList {
		border: solid 0px gray;
		display: inline-block;	
		margin: 0 auto;
		margin-top: 30px;
		/* margin: 50px 0 40px 50px !important; */
		
	}
	tr, td {
		border: solid 0px red;
		display: inline-block;
	}
	td {
		width: 270px;
		height: 450px;
		margin-bottom: 10px;		
		margin-right: 13px;
		margin-left: 13px;
	}
	table {
		text-align: center;
	}

	.sample_image img {
	    -webkit-transform:scale(1);
	    -moz-transform:scale(1);
	    -ms-transform:scale(1); 
	    -o-transform:scale(1);  
	    transform:scale(1);
	    -webkit-transition:.3s;
	    -moz-transition:.3s;
	    -ms-transition:.3s;
	    -o-transition:.3s;
	    transition:.3s;
	}
	.sample_image:hover img {
	    -webkit-transform:scale(1.1);
	    -moz-transform:scale(1.1);
	    -ms-transform:scale(1.1);   
	    -o-transform:scale(1.1);
	    transform:scale(1.1);
	}
	.sample_image {
		border: solid 0px skyblue;
		overflow: hidden;
	}
	.pricecolor {
		text-align: left;
	}
    a{
		text-decoration: none !important;
	}
	a:hover {
		text-decoration: none !important;
	}	
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%= ctxPath %>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%= ctxPath %>/util/myutil.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
					
		
	});	
	
</script>
<body>
	<div class="Mycontainer">
        <h2 style="margin-bottom: 1px; color:#00BCD4; font-weight:500;">후원하기</h2>
        <div class="contentLine" align="center"></div>
		<div class="section" align="center">			
		<div class="productList" align="center">		
            <table>
                <tbody id="pList" align="center">
               		 <%-- 준비중이 후원 스토리가 없을 때 --%>
						<c:if test="${empty donstoryList}">
							<tr> 
								<td colspan = "3" style="color:gray; font-size: 16px;">후원 스토리 준비중입니다...<br/>조금만 기다려주세요 :)</td>
							</tr>
						</c:if>
						<c:if test="${not empty donstoryList}">
                        	<tr>    
                        	<c:forEach var="don" items="${donstoryList}" varStatus="status">                       
                                <td class="pricecolor">
                                    <a href='<%= ctxPath%>/donation/donationStory.up?donseq=${don.donseq}'>
                                        <div style="width:250px; height:350px;" class="sample_image">
                                        <img style="width:100%; height:100%;" src="<%= ctxPath%>/resources/images/${don.listMainImg}" /></div>

                                        <br/><span style="font-size:12.5pt; letter-spacing: 0.4px; color:#333;">
                                        	${don.subject}</span>
                                        
                                        <div style="border-bottom: solid 2px #00BCD4; width: 248px; padding: 3px 0 0 0"></div>
                                            
                                        <c:if test="${don.totalPayment != 0}">
                                        	<c:if test="${don.dDay<=0}">
                                        	<span style="color: #00BCD4; font-weight: bold; font-size: 18px;">후원종료</span>
                                        	</c:if>
                                        	<c:if test="${don.dDay>0}">
                                        	<span style="color: #00BCD4; font-weight: bold; font-size: 18px;">D-${don.dDay}</span>
                                        	</c:if>                                            
											<%-- <fmt:formatNumber value="${(don.totalPayment)/don.targetAmount}" pattern="0.0%"/>  --%>  
                                            <span style="float:right; padding-top:3px; padding-right:25px; color: #bbb; font-weight: bold; font-size: 16px;">목표금액 <fmt:formatNumber value="${don.targetAmount}" pattern="###,###"/>원 </span>                                                                                        
                                        </c:if>
                                    </a>
                                </td> 
                                
                               <c:if test="${(status.count)%3 == 0 }">
                                    </tr>
                                     <tr style="margin-top:40px;">
                                </c:if> 
							</c:forEach>
                        	</tr> 
                    	</c:if>
                </tbody>
            </table>
			
				</div>
			</div>		
		</div>
	</div>
</body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= ctxPath %>/css/style.css" />
<title>donationSupporter</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script> 
<style type="text/css">
    .Mycontainer{
        border: solid 0px #ccc;
        width: 1080px;
        margin: 0 auto;
        /*background-color: #E5E5E5;*/
    }
    div.contentLine{
        padding-top: 0px;
        width: 1080px;
        border-bottom: solid 2px #00BCD4;         
    }
	.sideMenu{
		margin-top:10px;
		display: inline-block;
		width: 150px;
	}
	
	.info{
        border: solid 0px pink;
		display:inline-block;
		width: 1000px;
	}
	
	/*기부 이미지가 보이는 div*/
	.donSupport{
		display: inline-block;
		width: 600px;
        height: 100%;
        border:solid 0px red;
        float: left;
        margin-right: 40px;
	}		
	/*기부 이미지의 옆에 나오는 기부 정보가 들어가 있는 div*/
	.donInfo-table{
		display: inline-block;
		width:350px;
		text-align: left;
        font-size: 20pt;
        border: solid 1px #ccc;
        padding-left:30px;
        padding-bottom: 30px;
        margin-bottom: 20px;
        border-radius: 5px;
	}	
	/*기부 정보가 나열된 리스트에서 각각의 항목 부분의 태그*/
	dt{		
		display: inline-block;
		width: 300px;		
	}	
	/*기부 정보가 나열된 리스트에서 각각의 내용 부분의 태그*/
	dd{
		margin-left:-10px;
		display: inline-block;
		width: 380px;		
	}	
    .contentStoryImage{
        border: solid 1px #ccc;
        width: 1080px;
        height: 500px;
    }
    .donInfo-div{
		background-color: white;
		text-align: left;
		line-height: 30px;
		border-top : solid 1px #f4f4f4;
		border-bottom : solid 1px #f4f4f4;
		margin-bottom: 5px;		
	}		
	.detail_img{
		display: inline-block;
		width: 100px;
		height: 100px;
		margin-left: 50px;
		border: solid 1px black;
	}	
	.btn_area{
		margin-top:30px;
	}    
    .btn_donation{
		display: inline-block;
		width: 278px;
		height: 52px;
		padding-top: 12px;
		text-align: center;
		background-color: #00BCD4;
		color: white;
		font-size: 20px;
		font-weight: 600;
		border-radius: 5px;
		margin-top: 10px;
		cursor: pointer;
	}
    .btn_share{
        display: inline-block;
		width: 278px;
		height: 52px;
		padding-top: 12px;
		text-align: center;
		background-color: #fff;
		color: #aaa;
		font-size: 20px;
		font-weight: 550;
		border-radius: 5px;
        margin-top: 10px;
		cursor: pointer; 
        border:solid 1px #ccc;
    }    
    .donSopportText{
        border: solid 0px pink; 
        margin-top:50px;
       	
    }
    .donSopportName{
        padding: 10px 0;
        font-size: 13pt;   
        padding:0;  
    }
    .donSopportTime{
   	    border-bottom: solid 1px #ccc;
    	color: #bbb;
    	font-size: 10pt; 
    	padding:0;
        margin-bottom: 10px; 
        padding-bottom: 5px;
    }
    /* 스토리, 후원자 누르는 내비부분 */
    .contentNavi{
        height: 50px;
        border-bottom: solid 0px #ccc;
        margin: 0 auto;
        text-align: center;
        padding-top: 10px;
        background-color: #fcfcfc;
    }
    .contentNaviFont{
        font-size: 16pt;
        border: solid 0px #ccc;
        padding: 0 15px;
        margin: 0 30px;
    }
    .contentNaviFontClick{
        color: #00BCD4;
        padding-bottom: 8px;
        border-bottom: solid 3px #00BCD4;
    }
    a{
		text-decoration: none !important;
	}
	a:hover {
		text-decoration: none !important;
        color: #00BCD4;
	}	
    
    
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%= ctxPath %>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%= ctxPath %>/util/myutil.js"></script>
<script type="text/javascript">
	
    $(document).ready(function(){
        /*스토리,후원자 내비게이션 효과*/
        $(".StoryNaviFnt").click(function(){
            $(this).addClass("contentNaviFontClick");
            $(".SopportNaviFnt").removeClass("contentNaviFontClick");
        });
        $(".SopportNaviFnt").click(function(){
            $(this).addClass("contentNaviFontClick");
            $(".StoryNaviFnt").removeClass("contentNaviFontClick");
        });
        
        //공유하기 버튼 클릭시 
        $("#copy_btn").click(function(){
    		$('#copy_text_input').select(); //복사할 텍스트를 선택
    		document.execCommand("copy"); //클립보드 복사 실행
    		alert('URL이 복사되었습니다');
    	})
    });//end of  $(document).ready(function(){}) ---------
	
    //== 후원하기버튼
    function goPayment(donseq){
    	location.href = "<%= ctxPath%>/donation/donationPayment.up?donseq="+donseq;
    }
    
    //더보기페이징처리 (후원참여)
    //공유하기버튼 
    
</script>
</head>
<body>
	<div class="Mycontainer">
        <h2 style="margin-bottom: 1px; color:#00BCD4"><a href='<%= ctxPath%>/donation/donationList.up' style="color:#00BCD4; text-decoration: none;">후원하기</a></h2>
        <div class="contentLine" align="center"></div>
        <div class="contentNavi">
            <span class="contentNaviFont StoryNaviFnt"><a href='<%= ctxPath%>/donation/donationStory.up?donseq=${donsupporterPage[0].donseq}'>스토리</a></span>|            
            <span class="contentNaviFont SopportNaviFnt"><a href='<%= ctxPath%>/donation/donationSupporter.up?donseq=${donsupporterPage[0].donseq}'> 후원자 </a></span>
        </div>
        
		<div class="section" align="center">
			<div class="contents">
				<div class="sideMenu">
				</div>
				<div class="info">
					<div class="donSupport"> 
						<h3 align="left" style="margin: 20px 0; border-bottom:solid 1.5px #ccc; padding-bottom:13px;" >현재 이 프로젝트에<br/>${donsupporterPage[0].totalSupporter}명의 참여가 이루어졌습니다</h3>
                        <div align="left" class="donSopportText">
                        <%-- 후원스토리가 없을 때  --%>
						<c:if test="${empty donsupporterPage[0].donseq}">
							<tr> 
								<td colspan = "3" style="color:gray; font-size: 16px;">후원 스토리 준비중입니다...<br/>조금만 기다려주세요 :)</td>
							</tr>
						</c:if>
                        <c:if test="${not empty donsupporterPage[0].donseq}">
                        <%-- 후원스토리 있고, 1. 후원자 없을 때, 2. 후원자 있을 때 --%>
                        <c:forEach var="don" items="${donsupporterPage}" varStatus="status">
                        	<c:if test="${empty donsupporterPage[0].name}"> 
                        		<div class="donSopportName" style="color:gray; font-size:12pt;">후원자가 없습니다..<br/>많은 관심 부탁드립니다 :)</div>
                        	</c:if>
                        	<c:if test="${not empty donsupporterPage[0].name}">
	                        	<div class="donSopportName">
	                        	<c:choose>
		                        	<c:when test="${don.noName eq '1'}">익명님</c:when>
		                        	<c:otherwise>${don.name}님이</c:otherwise>
	                        	</c:choose>
	                        	<c:choose>
		                        	<c:when test="${don.noDonpmt eq '1'}">후원하였습니다</c:when>
		                        	<c:otherwise><fmt:formatNumber value="${don.sumPayment}" pattern="###,###"/>원 후원하였습니다.</c:otherwise>
	                        	</c:choose>  	
	                        	</div>
	                        	<%-- 후원결제(분으로)==> 60을 넘으면 시간/ 1440이 넘으면 일로 나타게  --%> 
	                           	<div class="donSopportTime">
	                           	<c:choose>
	                           	<!-- 몇시간전인지 해야함!! -->
		                           	<c:when test="${60 > (don.showDate)}">
		                           		<fmt:parseNumber var="showDate" value="${don.showDate/60}" integerOnly="true"/>${showDate}분전 
		                           	</c:when>
		                           	<c:otherwise>
		                           		<fmt:parseNumber var="showDate" value="${don.showDate/1440}" integerOnly="true"/> ${showDate}일전
		                           	</c:otherwise>
	                           	</c:choose>
	                           	</div>
                           	</c:if>
                        </c:forEach>
                        </c:if>	
                        </div>
                    </div>
                    
                   
                    <c:if test="${not empty donsupporterPage}">
                    <div class="donInfo-table">
                    <dl style="margin: 20px 0;">
                       <c:if test="${(donsupporterPage[0].dDay-1)<0 && (donsupporterPage[0].totalPayment)>=(donsupporterPage[0].targetAmount)}">
                       	<dt style="color:#00BCD4">후원 성공</dt>
                       </c:if>
                       <c:if test="${(ddonsupporterPage[0].dDay-1)<0 && (donsupporterPage[0].totalPayment)<(donsupporterPage[0].targetAmount)}">
                       	<dt style="color:#00BCD4">후원 종료</dt>
                       </c:if>
                       <c:if test="${(donsupporterPage[0].dDay-1)==0}">
                       	<dt style="color:#00BCD4">오늘 종료</dt>
                       </c:if>
                       <c:if test="${(donsupporterPage[0].dDay-1)> 0}">
						<dt>${donsupporterPage[0].dDay}일 남음</dt>
					   </c:if>															
						<div style="border-bottom: solid 4px #00BCD4; width: 120px; padding-bottom: 3px" align="center"></div>
                       </dl>
                                              
					<dl class="underLine">
						<dt><fmt:formatNumber value="${(donsupporterPage[0].totalPayment)/donsupporterPage[0].targetAmount}" pattern="0.0%"/>달성</dt>
					</dl>
					<dl class="underLine">							
						<dt><fmt:formatNumber value="${donsupporterPage[0].totalPayment}" pattern="###,###"/>원 펀딩</dt>
					</dl>                         
					<dl>
						<dt>${donsupporterPage[0].totalSupporter}명의 후원자</dt>
					</dl>
                    <span class="btn_donation" onclick="goPayment('${donsupporterPage[0].donseq}')">후원하기</span>
                    <span class="btn_share" id="copy_btn">공유하기</span>
	                <input type="hidden" id="copy_text_input" value="http://localhost:8080<%= ctxPath%>/donation/donationSupporter.up?donseq=${donsupporterPage[0].donseq}" class="form-control">
	                
	                </div>    
                    </c:if> 
				                
                    
				</div>
				
                </div>
				</div>
                
                <div class="contentLine" align="center"></div>
                
                              
			</div>
            
			
		
</body>
</html>
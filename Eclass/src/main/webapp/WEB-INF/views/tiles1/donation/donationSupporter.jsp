<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        border: solid 1px #ccc;
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
        border: solid 1px pink;
		display:inline-block;
		width: 1000px;
	}
	
	/*기부 이미지가 보이는 div*/
	.donSupport{
		display: inline-block;
		width: 600px;
        height: 100%;
        border:solid 1px red;
        float: left;
	}		
	/*기부 이미지의 옆에 나오는 기부 정보가 들어가 있는 div*/
	.donInfo-table{
		display: inline-block;
		width:350px;
		text-align: left;
        font-size: 20pt;
        border: solid 1px #ccc;
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
        border: solid 1px pink;     
    }
    .donSopportName{
        border-bottom: solid 1px #ccc;
        padding: 10px 0;
        font-size: 13pt;        
    }
    /* 스토리, 후원자 누르는 내비부분 */
    .contentNavi{
        height: 50px;
        border: solid 1px #ccc;
        margin: 0 auto;
        text-align: center;
        padding-top: 10px;
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
    });//end of  $(document).ready(function(){}) ---------
	
</script>
</head>
<body>
	<div class="Mycontainer">
        <h2 style="margin-bottom: 1px; color:#00BCD4">후원하기</h2>
        <div class="contentLine" align="center"></div>
        <div class="contentNavi">
            <span class="contentNaviFont StoryNaviFnt"><a href='<%= ctxPath%>/donation/donationSupporter.up?donseq=${donstoryPage[0].donseq}'>스토리</a></span>|            
            <span class="contentNaviFont SopportNaviFnt"><a href='<%= ctxPath%>/donation/donationSupporter.up?donseq=${donstoryPage[0].donseq}'> 후원자 </a></span>
        </div>
        
		<div class="section" align="center">
			<div class="contents">
				<div class="sideMenu">
				</div>
				<div class="info">
					<div class="donSupport">
						<h3 align="left" style="margin: 30px 0;">현재 이 프로젝트에<br/>27명의 참여가 이루어졌습니다</h3>
                        <div align="left" class="donSopportText">
                            <div class="donSopportName">지코님이 43,000원 후원하였습니다.</div>
                            
                            <!--<div>현재시간 - DB에 결제한 시간 -> 일수로 나옴 몇초로 바꾸기 (1분전이면 몇초전, 1분이상 분으로)</div>-->
                            <div class="donSopportName">보검님이 43,000원 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            <div class="donSopportName">익명님이 후원하였습니다.</div>
                            
                        </div>
                    </div>
                    
                    <div class="donInfo-table">
                    <dl style="margin: 20px 0;">
                        <dt>21일 남음</dt>
                        <div style="border-bottom: solid 4px #00BCD4; width: 120px; padding-bottom: 3px" align="center"></div>
                    </dl>

                    <dl class="underLine">
                        <dt>120%달성</dt>
                    </dl>
                    <dl class="underLine">
                        <dt>1,000,000원 펀딩</dt>
                    </dl>                         
                    <dl>
                        <dt>50명의 후원자</dt>
                    </dl>
                    <span class="btn_donation" onclick="">후원하기</span>
                    <span class="btn_share" onclick="">공유하기</span>
				</div>                
                    
				</div>
				
                </div>
				</div>
                
                <div class="contentLine" align="center"></div>
                
                              
			</div>
            
			
		
</body>
</html>
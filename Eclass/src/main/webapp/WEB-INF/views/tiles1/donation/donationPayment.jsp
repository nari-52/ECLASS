<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= ctxPath %>/css/style.css" />
<title>donationPayment</title>
<style type="text/css">
    .Mycontainer{
        border: solid 1px #ccc;
        width: 1080px;
        margin: 0 auto;
        /*background-color: #E5E5E5;*/
    }
    div.contentLine{
        padding-top: 10px;
        width: 1080px;
        border-bottom: solid 2px #00BCD4;         
    }
	
    /* == 결제 정보 == */
    #payment_table{
        width: 800px;
        border: solid 1px #ccc;
        margin: 0 auto;
    }
    #paymentTotal_table{
        width: 260px;
        text-align: center;
        border: solid 1px #ccc;
        margin: 10px 0;	
    }
    th, td{
		height : 50px;
		vertical-align: middle;	
		padding : 20px;		
	}
    th{
        border: solid 1px #ccc;
        width: 200px;	
        text-align: left;
    }
    td{
        /*border: solid 0px pink;*/
        border: solid 1px #ccc;
        font-size: 10pt;          
    }
    .pointInput{
        margin-bottom: 8px;
    }
    
    /* 항목 타이틀 */
	.payment_title{
		width:90px;
		text-align: left;
		padding-top : 60px;
        padding-left: 7px;
		padding-bottom : 3px;
		border-bottom: solid 2.3px #00BCD4; 
		font-weight: 700;
		font-size: 15pt;
        color: #00BCD4;
	}
    
	/* 결제안내 설명 관련 정보 */
    .paymentExp{
        font-size: 10pt;
        padding: 5px 0;
    }
    input[type=text]{
        width: 100px;
        border: solid 1px #bbb;
        border-radius: 2px;
    }
    input[type=checkbox]{
        width: 22px;
        border: solid 1px #bbb;
     border-radius: 2px;
    }
    .smalltext{
        color: #333;
        font-size: 9pt;
        font-weight: 600
    }
    a{
		text-decoration: none !important;
	}
	a:hover {
		text-decoration: none !important;
        color: #00BCD4;
	}	
    #btn_payment{
		width: 200px;
		height: 48px;
    	background-color: #00BCD4;
	    color: #fff;
        border: none;
        font-size: 13pt;
        border-radius: 3px;
        margin-top: 40px;
        margin-bottom: 80px;
	}       
</style>
<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/ShoppingMall/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/ShoppingMall/util/myutil.js"></script>
<script type="text/javascript">
	
    $(document).ready(function(){
       
    	// == 포인트 기입시 유효성 검사   
       $("#pointUseInput").keyup(function(event){            
            //1) 숫자만 입력(숫자이외의 글자를 치면 아예 못치게 차단)
            var keycode = event.keyCode;
    	 
            if( !((48 <= keycode && keycode<=57) || (96<=keycode && keycode<=105)|| (keycode==8))){
               var word = $(this).val().length;
               var keyValue = $(this).val().substring(0,word-1);
               $(this).val(keyValue);
            } 
            //만약 현재 포인트보다 크게 기입 했을 시 (x) --> 유효성 검사로 !!!!!!!!!!!!            
            
       });// end of $("#pointUseInput").keyup(function(event){})--------
       
       $("#paymentInput").keyup(function(event){            
           //1) 숫자만 입력(숫자이외의 글자를 치면 아예 못치게 차단)
           var keycode = event.keyCode;
   	 
           if( !((48 <= keycode && keycode<=57) || (96<=keycode && keycode<=105)|| (keycode==8))){
              var word = $(this).val().length;
              var keyValue = $(this).val().substring(0,word-1);  
              //콤마 추가!! 
              $(this).val(keyValue);  
           }   
           
       });// end of $("#paymentInput").keyup(function(event){})--------
           		
       addComma($("#paymentInput").val());
       
       
       
       var frm = document.addFrm;
		   frm.method="POST";
		   frm.action= "<%= ctxPath%>/donation/donationPayment.up";
		   frm.submit();
    	
    });//end of  $(document).ready(function(){}) ---------
	
    function addComma(num) {
    	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
    	  return num.toString().replace(regexp, ',');
    }
    
    
    //== 유효성 검사
    //1. 포인트 숫자 아닐 시 -> 알람 
    //2. 빈칸 입력 시 -> 알람 
    //3. 포인트보다 크게 기입 했을 시 (x) --> 알람
    
    
    
</script>
</head>
<body>
	<div class="Mycontainer">
        <h2 style="margin-bottom: 0.5px; color:#00BCD4; text-align: center; font-weight: 550;">후원결제 페이지</h2>
        
        
        <h2 style="margin-top: 10px; color:gray; text-align: center; font-size: 19.5pt">고아원 아이들을 위한 교육후원!</h2>
        <div class="contentLine" style="padding: 0px;" align="center"></div>
                
        <!-- 결제 정보 -->
        <form name="paymentFrm">
        <table id="payment_table">
            <div class="payment_title">결제정보</div>
                <tr>
                    <th>포인트 금액</th>
                    <td> 
                        <div class="paymentExp">현재 포인트 보유액 {200}원</div>
                        <input class="pointInput" type="text" id="pointUseInput" name="pointUseInput" value="" required="required" maxlength="11">포인트를 사용하겠습니다
                    </td>
                </tr>
                <tr>
                    <th>후원 금액</th>
                    <td> 
                        <input type="text" id="paymentInput" name="paymentInput" value="" required="required" maxlength="11">원을 후원하겠습니다
                        <span class="smalltext">(후원금액의 10%는 포인트로 적립됩니다)</span>
                    </td>
                </tr>


                <tr>
                    <th>공개 여부</th>
                    <td> 
                        <div class="paymentExp">서포터 목록에 서포터 이름과 후원금액이 공개됩니다</div>
                        <input type="checkbox" id="nameCheck" name="nameCheck" value="">이름 비공개 &nbsp;&nbsp;
                        <input type="checkbox" id="nameCheck" name="nameCheck" value="">금액 비공개
                    </td>
                </tr>
                <tr style="height :50px;">
                    <th>결제 내역</th>
                    <td> 
                        <div>
                        <table id="paymentTotal_table">
                        <tr style="background-color: #f2f2f2">
                            <th style="text-align: center; height : 25px;">후원금액</th>
                            <th style="text-align: center; height : 25px;">포인트</th>
                            <th style="text-align: center; height : 25px;">총 결제금액</th>
                        </tr>
                        <tr>
                            <td style="height : 40px;">{10,000}원</td>
                            <td style="height : 40px;">{3,000}점</td>
                            <td style="height : 40px;">{13,000}원</td>
                        </tr>
                            
                        </table>
                        </div>
                    </td>
                </tr>
            </table>

            <div class="payment_title" style="margin-top:40px;">동의사항</div>
            <table id="payment_table"> 
                <tr>
                    <td colspan="2" style="height:25px;">
                        <label for="agreeCheck" style="margin:0;">	
                        <input type="checkbox" name="agreeCheck" id="agreeCheck" style="margin:10px 1px 10px 0;"> 결제 진행 필수 동의</label>	
                        <span style="padding-left:20px;">결제대행 서비스 약관 동의<span class="agree_sub">(필수)</span></span>
                        <div style="padding-left:6px; color:dimgrey; font-weight: 500;">※ 결제하신 금액은 별도 수수료 없이 펀딩을 진행하는 펀더에게 100% 전달됩니다.</div>
                    </td>
                </tr>
            </table>
            
            <input type="hidden" name="fk_donSeq" value="${donSeq}" />
			<input type="hidden" name="fk_userid" value="${sessionScope.loginuser.userid}" />
			<input type="hidden" name="name" value="${sessionScope.loginuser.name}" />
				
        <!-- 7. 전송 버튼 -->					
        <div style="padding:30px 0 14px;" align="center">
            <input type="button" style="float:none" value="결제하기" id="btn_payment">
        </div>	
		</form>        
    </div>
      
</body>
</html>
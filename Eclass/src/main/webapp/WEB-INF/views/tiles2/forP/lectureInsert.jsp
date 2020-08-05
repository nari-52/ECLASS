<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %>

<style>
   table#tblProdInput {border: solid gray 1px; 
                       border-collapse: collapse;  }
                       
    table#tblProdInput td {border: solid gray 1px; 
                          padding-left: 10px;
                          height: 50px; 
                          }
                          
    .prodInputName {background-color: #00BCD4; 
                    font-weight: bold; }                                                 
   
 
   
</style>

<script type="text/javascript">

   $(document).ready(function(){
      
      $(".error").hide();
                        
      $("#spinnerPqty").spinner({
         
         spin:function(event,ui){
            
            if(ui.value > 100) {
               
               $(this).spinner("value", 100);
               return false;
            }
            
            else if(ui.value < 1) {
               
               $(this).spinner("value", 1);
               return false;
            }
         }
      
      });// end of $("#spinnerPqty").spinner()--------
      
      
      $("#spinnerImgQty").spinner({
         spin:function(event,ui){
            if(ui.value > 10) {
               $(this).spinner("value", 10);
               return false;
            }
            else if(ui.value < 0) {
               $(this).spinner("value", 1);
               return false;
               }
         }
      });// end of $("#spinnerPqty").spinner()--------
      
      // spinner의 이벤트는 click 도 아니고 change도 아니고 "spinstop"이다. 
      
      $("#spinnerImgQty").bind("spinstop", function(){
         
         //alert("확인용 : " + $(this).val());
         
         var html = "";
          var cnt = $(this).val();
          
          if(cnt == "0") {
             $("#divfileattach").empty();
             $("#attachCount").val("");
             return;
          }
          else {
             for(var i=0; i<parseInt(cnt); i++) {
                html += "<br/>";
                html += "<input type='file' name='attach"+i+"' class='btn btn-default' />"; 
             }// end of for---------------------
          
             $("#divfileattach").empty();
             $("#divfileattach").append(html);
            $("#attachCount").val(cnt);
          }
         
      });
      
            
      $("#btnRegister").click(function(){
         
         var flag = false;
         
         $(".infoData").each(function(){
            
            var val = $(this).val().trim();
            
            if(val == "") {
               
               $(this).next().show();
               flag = true;
               return false; 
            }
         });
         
         if(!flag) {
            
            var frm = document.lectureFm;
            frm.action= "<%= ctxPath%>/LectureInsert.action";
            frm.submit();
         }
         
      });
      
      
   }); // end of $(document).ready();--------------
   
   
</script>

<div align="center" style="margin-bottom: 20px;">

<div style="border: solid green 2px; width: 300px; margin-top: 20px; padding-top: 10px; padding-bottom: 10px; border-left: hidden; border-right: hidden;">       
   <span style="font-size: 15pt; font-weight: bold;">교과목등록</span>   
</div>
<br/>


<form name="lectureFm"> 
      


<table id="tblProdInput" style="width: 80%;">
<tbody>
   <tr>
      <td width="25%" class="prodInputName" style="padding-top: 10px; color:white;">이수구분</td>
      
      <td width="75%" align="left" style="padding-top: 1px;" >
         <select name="pcategory_fk" class="infoData">
            <option value="">:::선택하세요:::</option>
            
               <option value="100000">전공</option>
               <option value="200000">교양</option>
               <option value="300000">일반</option>
         </select>
         
       
      </td>   
   </tr>

   <tr style="line-height: 30px;">
      <td  class="prodInputName" style="color:white;">교과목명</td>
    	<td><input type="text" style="width: 300px;" name="pname" class="box infoData" /></td>
   </tr>

   <tr>
      <td width="25%" class="prodInputName" style="color:white;">과목소개</td>
		<td   > <textarea name="pcontent" rows="5" cols="60"></textarea></td>
   <tr>
      <td width="25%" class="prodInputName" style="color:white;">교과목이미지</td>
  		<td> <input type="file" name="limage"/></td>
   </tr>

   <tr style="height: 70px;">
      <td colspan="2" align="center" style="border-left: hidden; border-bottom: hidden; border-right: hidden;">
          <input type="button" value="다음단계" id="btnRegister" style="width: 80px; color:black; font-weight:bold;" /> 
          &nbsp;
          <input type="reset" value="취소"  style="width: 80px; color:black; font-weight:bold;" /> 
          <input type="hidden" value=""/> <!-- 강의차수시퀀스 -->
	   		<input type="hidden" value=""/> <!-- 교과목번호 시퀀스 -->  
      </td>
   </tr>
</tbody>
</table>

</form>
</div>


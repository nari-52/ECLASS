<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
   table#tblProdInput {border: solid gray 1px; 
                       border-collapse: collapse; }
                       
    table#tblProdInput td {border: solid gray 1px; 
                          padding-left: 10px;
                          height: 50px; }
                          
    .prodInputName {background-color: #e6fff2; 
                    font-weight: bold; }                                                 
   
   .error {color: red; font-weight: bold; font-size: 9pt;}
   
   .woman{
      display: none;
      }
   
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
            
            var frm = document.prodInputFrm;
            frm.submit();
         }
         
      });
      
         $("#woman").click(function(){
             //alert("Asd"); 
             $("#hpcategory").show();
             $(".man").hide();
             $(".woman").show();
          });
          
          $("#man").click(function(){
             //alert("Asd"); 
             $("#hpcategory").show();
             $(".man").show();
             $(".woman").hide();
          });
          
          $("#couple").click(function(){
             $(".hpcategory").hide();
             $("#hpcategory").hide();

          });
          
          $("#sale").click(function(){
             $(".hpcategory").hide();
             $("#hpcategory").hide();
         });
      
      
   }); // end of $(document).ready();--------------
   
   
</script>

<div align="center" style="margin-bottom: 20px;">

<div style="border: solid green 2px; width: 300px; margin-top: 20px; padding-top: 10px; padding-bottom: 10px; border-left: hidden; border-right: hidden;">       
   <span style="font-size: 15pt; font-weight: bold;">강의등록&nbsp;[관리자전용]</span>   
</div>
<br/>


<form name="prodInputFrm"
      action="<%= request.getContextPath()%>/semiProject/productInsert.kh"
      method="POST"                         
      enctype="multipart/form-data"> 
      
<table id="tblProdInput" style="width: 80%;">
<tbody>
   <tr>
      <td width="25%" class="prodInputName" style="padding-top: 10px;">카테고리</td>
      <td width="75%" align="left" style="padding-top: 10px;" >
         <%-- <select name="pcategory_fk" class="infoData">
            <option value="">:::선택하세요:::</option>
            
               <option value="100000">대학수학</option>
               <option value="200000">자바</option>
               <option value="300000">체육</option>
                    <option value="300000">체육</option>
                    <option value="300000">체육</option>
                    <option value="300000">체육</option>
                    <option value="300000">체육</option>
                    <option value="300000">체육</option>
                    <option value="300000">체육</option>
                    <option value="300000">체육</option>
             
            <c:forEach var="map" items="${requestScope.pcategoryList}">
               <option value="${map.code}">${map.pname}</option>
            </c:forEach>
         </select> --%>
         <!--<input type="radio" id="man" name="pcategory" value="1" checked="checked"/>
            <input type="radio" id="woman" name="pcategory" value="2"/>      
            <input type="radio" id="couple" name="pcategory" value="3"/>          -->      
         <span class="error">필수입력</span>
      </td>   
   </tr>
   <tr>
      <td width="25%" class="prodInputName" id="hpcategory">강의종류</td>
      <td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;" >
         <select name="hpcategory" class="man hpcategory box infoData">
               <option value="5">대학수학1</option>
               <option value="6">대학수학2</option>
               <option value="7">대학수학3</option>  
            </select>
            <select name="hpcategory" class="woman hpcategory box infoData">
               <option value="8" >set</option>
               <option value="9" >BRAS</option>
               <option value="10" >PANTIES</option>                                 
            </select>
         <span class="error">필수입력</span>
      </td>
   </tr>   

   <tr>
      <td width="25%" class="prodInputName">강의명</td>
      <td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;" >
         <input type="text" style="width: 300px;" name="pname" class="box infoData" />
         <span class="error">필수입력</span>
      </td>
   </tr>
   <tr>
      <td width="25%" class="prodInputName">강의교수명</td>
      <td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
         <input type="text" style="width: 300px;" name="pcompany" class="box infoData" />
         <span class="error">필수입력</span>
      </td>
   </tr>
   <tr>
      <td width="25%" class="prodInputName">강의이미지</td>
      <td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
         <input type="file" name="pimage1" class="infoData" /><span class="error"></span></span>
      </td>
   </tr>
   </tr>
   <tr>
      <td width="25%" class="prodInputName">강의스펙</td>
      <td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
         <select name="pspec" class="infoData" id="specName">
            <%-- 
               <option value="HIT">HIT</option>
               <option value="NEW">NEW</option>
               <option value="BEST">BEST</option> 
            --%>
            
            <c:forEach var="specName" items="${requestScope.specList}">
               <option>${specName}</option>
            </c:forEach>         
         </select>
         <span class="error">필수입력</span>
      </td>
   </tr>
   <tr>
      <td width="25%" class="prodInputName">강의설명</td>
      <td width="75%" align="left" style="border-top: hidden; border-bottom: hidden;">
         <textarea name="pcontent" rows="5" cols="60"></textarea>
      </td>
   </tr>
  <tr>
          <td width="25%" class="prodInputName" style="padding-bottom: 10px;">추가이미지파일(선택)</td>
          <td>
             <label for="spinnerImgQty">파일갯수 : </label>
          <input id="spinnerImgQty" value="0" style="width: 30px; height: 20px;">
             <div id="divfileattach"></div>
             <input type="text" name="attachCount" id="attachCount" /> 
          </td>
    </tr>
   
   <tr style="height: 70px;">
      <td colspan="2" align="center" style="border-left: hidden; border-bottom: hidden; border-right: hidden;">
          <input type="button" value="강의등록" id="btnRegister" style="width: 80px;" /> 
          &nbsp;
          <input type="reset" value="취소"  style="width: 80px;" />   
      </td>
   </tr>
</tbody>
</table>
</form>
</div>


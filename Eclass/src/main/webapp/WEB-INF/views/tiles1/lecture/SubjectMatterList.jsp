<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <title>Home</title>
   
   <style>
   
   
   #container1{
      width:1080px;
      margin: 0 auto;
     /*   border: solid 1px gray; */
      
   }
   
   #contents{
      height: 55%;
        clear: both;
   }
   
   #side_menu{
      width: 21%;
      height: 100%;
      background-color: #E5E5E5;
      /* color: white; */
   }

   
   #side_nav{
      line-height: 50px;
      
   }
   
   #main_feed{
      /* ///border:solid 1px red; */
      margin-top: -520px;
       width: 78%;
      height: 97%; 
      float:right;
      
   }
   
   a {
        text-decoration: none;
      }
      
      a:hover {
        color: #00BCD4;
        font-weight: bold;
        font-size:13pt;
		text-decoration: none;
      }
      
      #soga{
         line-height:25px;
      }
        .ctext{
        font: 14px/20px "NanumSquareRound", "Nanum Gothic", "돋움", Dotum, "굴림", Gulim, Arial, sans-serif;
        color: #666;
        letter-spacing: -0.03em;
        text-align: left;
        padding-top: 15px;
        overflow: hidden;}
        
        .list_li{
        font: 14px/20px "NanumSquareRound", "Nanum Gothic", "돋움", Dotum, "굴림", Gulim, Arial, sans-serif;
        color: #666;
        letter-spacing: -0.03em;
        text-align: left;
        margin: 0;
        list-style: none !important;
        display: inline-block;
        width: 1224px;
        padding: 0px 0px;
   }
        li.igan{
        font: 14px/20px "NanumSquareRound", "Nanum Gothic", "돋움", Dotum, "굴림", Gulim, Arial, sans-serif;
        color: #666;
        letter-spacing: -0.03em;
        list-style: none !important;
        float: left;
            
        width: 280px;
        padding: 0px !important;
        margin: 10px 24px 10px 50px;
        border: 1px #dedede solid;}
        
        
        .cimg{
        font: 14px/20px "NanumSquareRound", "Nanum Gothic", "돋움", Dotum, "굴림", Gulim, Arial, sans-serif;
        color: #666;
        letter-spacing: -0.03em;
        list-style: none !important;
        width: 280px;
        
        height: 190px;}
        
</style>        
   
    
   
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body>

   <div id="container1">
   
    <section id="contents">
      <aside id="side_menu">
         <ul id="side_nav" >
            <li style="font-weight:bold; font-size:16pt; ">전공
	            <ul>
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">자바프로그래밍</a></li>
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">css</a></li>  
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">c+언어</a></li>    
	            </ul>
	        </li>
            <li style="font-weight:bold; font-size:16pt;">교양
	          	  <ul>
		            <li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">수리통계학</a></li>
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">위상수학</a></li>  
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">공업수학</a></li>  
		          </ul>
            </li> 
            <li style="font-weight:bold; font-size:16pt;">일반
           		<ul>
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">ROTC 국군사관</a></li>
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">육군사관학교</a></li>  
	            	<li style="margin-top:-20px; font-weight:normal; font-size:13pt;"><a href="">삼사관학교</a></li>   
	            </ul>
            </li>
    
         </ul>
      </aside>
   
      <article id="main_feed" >
          
           
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/동원.png" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="chicago.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="ny.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
            
            <div>
                
            </div>
  
            
      </article>
      
    </section>

       <div>
           
           <hr style="border:solid 1px gray; width:100%; margin-top: 70px">
           
           <div class="ctext" >
           <div class="chart">
                <ul class="list_li">
                    <li class="igan">
                        <div class="cimg">
                            <a href=""><img src="<%= request.getContextPath()%>/images/캡처1.jpg"/></a>
                        </div>
                        
                        <div class="nayong">
                            <div class="title"><a href="">대학수학 이 강의 하나로 끝내기</a></div>
                            <div class="text">어려워서 항상 포기하고 복잡해서 힘들었나? 이 강의를 듣고 복잡하고 어려운 대학수학을 뿌시자</div>
                        </div>
                    </li>
                    <li class="igan">
                        <div class="cimg">
                            <a href=""><img src="<%= request.getContextPath()%>/images/캡처1.jpg"/></a>
                        </div>
                        
                        <div class="nayong">
                            <div class="title"><a href="">대학수학 이 강의 하나로 끝내기</a></div>
                            <div class="text">어려워서 항상 포기하고 복잡해서 힘들었나? 이 강의를 듣고 복잡하고 어려운 대학수학을 뿌시자</div>
                        </div>
                    </li>
                    <li class="igan">
                        <div class="cimg">
                            <a href=""><img src="<%= request.getContextPath()%>/images/캡처1.jpg"/></a>
                        </div>
                        
                        <div class="nayong">
                            <div class="title"><a href="">대학수학 이 강의 하나로 끝내기</a></div>
                            <div class="text">어려워서 항상 포기하고 복잡해서 힘들었나? 이 강의를 듣고 복잡하고 어려운 대학수학을 뿌시자</div>
                        </div>
                    </li>
                    <li class="igan">
                        <div class="cimg">
                            <a href=""><img src="<%= request.getContextPath()%>/images/캡처1.jpg"/></a>
                        </div>
                        
                        <div class="nayong">
                            <div class="title"><a href="">대학수학 이 강의 하나로 끝내기</a></div>
                            <div class="text">어려워서 항상 포기하고 복잡해서 힘들었나? 이 강의를 듣고 복잡하고 어려운 대학수학을 뿌시자</div>
                        </div>
                    </li>
                    <li class="igan">
                        <div class="cimg">
                            <a href=""><img src="<%= request.getContextPath()%>/images/캡처1.jpg"/></a>
                        </div>
                        
                        <div class="nayong">
                            <div class="title"><a href="">대학수학 이 강의 하나로 끝내기</a></div>
                            <div class="text">어려워서 항상 포기하고 복잡해서 힘들었나? 이 강의를 듣고 복잡하고 어려운 대학수학을 뿌시자</div>
                        </div>
                    </li>

               </ul>
           </div>
           </div>
           
           <div class="pagebar" align="center";>
            1 2 3 4 5 [다음]
           </div>
           
        </div>
        
    </div>

</body>
</html>

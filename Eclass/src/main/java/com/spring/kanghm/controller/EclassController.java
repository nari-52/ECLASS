package com.spring.kanghm.controller;

import java.io.File;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.common.FileManager;
import com.spring.kanghm.service.InterEclassService;

//=== #30. 컨트롤러 선언 === 
@Component
/* XML에서 빈을 만드는 대신에 클래스명 앞에 @Component 어노테이션을 적어주면 해당 클래스는 bean으로 자동 등록된다. 
  그리고 bean의 이름(첫글자는 소문자)은 해당 클래스명이 된다.
  여기서는 @Controller 를 사용하므로 @Component 기능이 이미 있으므로 @Component를 명기하지 않아도 BoardController 는 bean 으로 등록되어 스프링컨테이너가 자동적으로 관리해준다. 
*/

@Controller
public class EclassController {

	// === #35. 의존객체 주입하기(DI: Dependency Injection) ===
		@Autowired
		private InterEclassService service;
	
	// ===== #150. 파일업로드 및 다운로드를 해주는  FileManager 클래스 의존객체 주입하기(DI:Dependency Injection)  =====
	@Autowired // Type에 따라 알아서 Bean을 주입해준다.
	private FileManager fileManager; 
		
		// 메인페이지 요청
		@RequestMapping(value="/index.up")
		public ModelAndView index(ModelAndView mav) {
			mav.setViewName("main/index.tiles1");
			
			return mav;
		}	
		
		// 관리자페이지
		@RequestMapping(value="/admin.up")
		public ModelAndView test(ModelAndView mav) {
			
			mav.setViewName("admin");
			
			return mav;
		}
							
		// 공지사항 목록 
		@RequestMapping(value="/notice.up")
		public ModelAndView notice(ModelAndView mav) {
			
			mav.setViewName("board/notice.tiles1");
			
			return mav;
		}
		
		// 공지사항 글쓰기
		@RequestMapping(value="/addnotice.up")
		public ModelAndView addnotice(ModelAndView mav) {
			
			mav.setViewName("board/addnotice.tiles1");
			
			return mav;
		}
		
		// 공지사항 게시판 글 상세보기
		@RequestMapping(value="/noticeview.up")
		public ModelAndView noticeview(ModelAndView mav) {
			
			mav.setViewName("board/noticeview.tiles1");
			
			return mav;
		}
		
		// 자유게시판 목록
		@RequestMapping(value="/freeboard.up")
		public ModelAndView freeboard(ModelAndView mav) {
			
			mav.setViewName("board/freeboard.tiles1");
			
			return mav;
		}
		
		// 자유게시판 글쓰기
		@RequestMapping(value="/addfreeboard.up")
		public ModelAndView addfreeboard(ModelAndView mav) {
			
			mav.setViewName("board/addfreeboard.tiles1");
			
			return mav;
		}
		
		// 자유게시판 글 상세보기
		@RequestMapping(value="/freeboardview.up")
		public ModelAndView freeboardview(ModelAndView mav) {
			
			mav.setViewName("board/freeboardview.tiles1");
			
			return mav;
		}
		
		
		// Q&A게시판 목록
		@RequestMapping(value="/question.up")
		public ModelAndView question(ModelAndView mav) {
			
			mav.setViewName("board/question.tiles1");
			
			return mav;
		}
		
		// Q&A게시판 글쓰기
		@RequestMapping(value="/addquestion.up")
		public ModelAndView addquestion(ModelAndView mav) {
			
			mav.setViewName("board/addquestion.tiles1");
			
			return mav;
		}			
				
		// Q&A게시판 글 상세보기
		@RequestMapping(value="/questionview.up")
		public ModelAndView questionview(ModelAndView mav) {
			
			mav.setViewName("board/questionview.tiles1");
			
			return mav;
		}
				
		
		// 스마트에디터 드래그앤드롭을 사용한 다중사진 파일업로드
		@RequestMapping(value="/image/multiplePhotoUpload.action", method= {RequestMethod.POST}) 
		public void multiplePhotoUpload(HttpServletRequest request, HttpServletResponse response) {
			/*
			  1. 사용자가 보낸파일을 WAS(톰캣)의 특정 폴더에 저장해주어야 한다.
			  >>> 파일이 업로드 되어질 특정 경로(폴더) 지정해주기
			   	    우리는 WAS의 webapp/resources/photo_upload 라는 폴더로 지정해준다.  
			 */
			
			// WAS의 webapp의 절대경로를 알아와야 한다.
			HttpSession session = request.getSession();
			String root = session.getServletContext().getRealPath("/");
			String path = root + "resources" + File.separator + "photo_upload";
			 /*
		        File.separator는 운영체제에서 사용하는 폴더와 파일의 구분자이다.
		                  운영체제가 Windows 이라면 "\"이고 
		                  운영체제가 UNIX, Linux 이라면 "/" 이다. 
			 */
	     
				System.out.println(root);
		     // path 가 첨부파일을 저장할 WAS(톱캣)의 폴더가 된다.
		        System.out.println("~~~ 확인용 Eclass path => " + path);
		     // ~~~ 확인용 path => C:\springworkspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Board\resources\photo_upload
			
		     File dir = new File(path);
		     if(!dir.exists()) { // 폴더가 없는 경우
		    	 dir.mkdirs(); // 폴더가 없으면 만들어라 / mkdirs - 하위폴더까지 만들어라
		     }
			
		     String strURL = "";
				
		 	try {
		 		if(!"OPTIONS".equals(request.getMethod().toUpperCase())) {
		 		    String filename = request.getHeader("file-name"); //파일명을 받는다 - 일반 원본파일명
		 	    		
		 	        System.out.println(">>>> 확인용 filename ==> " + filename); 
		 	        // >>>> 확인용 filename ==> berkelekle%ED%8A%B8%EB%9E%9C%EB%94%9405.jpg
		 	    		
		 	    	   InputStream is = request.getInputStream();
		 	    	/*
				 	          요청 헤더의 content-type이 application/json 이거나 multipart/form-data 형식일 때,
				 	          혹은 이름 없이 값만 전달될 때 이 값은 요청 헤더가 아닌 바디를 통해 전달된다. 
				 	          이러한 형태의 값을 'payload body'라고 하는데 요청 바디에 직접 쓰여진다 하여 'request body post data'라고도 한다.

		                                      서블릿에서 payload body는 Request.getParameter()가 아니라 
		                 Request.getInputStream() 혹은 Request.getReader()를 통해 body를 직접 읽는 방식으로 가져온다. 	
		 	    	*/
		 	       String newFilename = fileManager.doFileUpload(is, filename, path);
		 	    	
		 		   int width = fileManager.getImageWidth(path+File.separator+newFilename);
		 			
		 		   if(width > 600)
		 		      width = 600;
		 				
		 		// System.out.println(">>>> 확인용 width ==> " + width);
		 		// >>>> 확인용 width ==> 600
		 		// >>>> 확인용 width ==> 121
		 	    	
		 		   String CP = request.getContextPath(); // board
		 			
		 		   strURL += "&bNewLine=true&sFileName="; 
		             	   strURL += newFilename;
		             	   strURL += "&sWidth="+width;
		             	   strURL += "&sFileURL="+CP+"/resources/photo_upload/"+newFilename;
		 	    	}
		 		
		 	       /// 웹브라우저상에 사진 이미지를 쓰기 ///
		 		   PrintWriter out = response.getWriter();
		 		   out.print(strURL);
		 	} catch(Exception e){
		 			e.printStackTrace();
		 	}
		     
		}// end of multiplePhotoUpload() -----------------------------------------------------------------
		
		
}

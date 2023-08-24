<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="db.quiz.QuizBoardDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	
	String realPath=getServletContext().getRealPath("/upload");
	System.out.println(realPath);
	int uploadSize=1024*1024*3;
	
	MultipartRequest multi=null;
	multi=new MultipartRequest(request,realPath,uploadSize,"utf-8",new DefaultFileRenamePolicy());
	
	QuizBoardDao dao=new QuizBoardDao();
	QuizBoardDto dto=new QuizBoardDto();
	
	dto.setWriter(multi.getParameter("writer"));
	dto.setTitle(multi.getParameter("title"));
	dto.setContent(multi.getParameter("content"));
	
	String photo=multi.getFilesystemName("imgname");
	
	if(photo==null){
		dto.setImgname("../image/noimage.png");
	}
	else{
		dto.setImgname("../upload/"+photo);
	}
	
	dao.insertQuiz(dto);
	
	response.sendRedirect("quizlist.jsp");
%>
</body>
</html>
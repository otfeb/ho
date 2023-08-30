<%@page import="data.dto.answerDto"%>
<%@page import="data.dao.answerDao"%>
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
	String idx=request.getParameter("idx");
	String content=request.getParameter("content");
	
	answerDto dto=new answerDto();
	dto.setIdx(idx);
	dto.setContent(content);
	
	answerDao dao=new answerDao();
	dao.updateAnswer(dto);
	
	response.sendRedirect("../index.jsp?main=guest/guestlist.jsp");
	
%>
</body>
</html>
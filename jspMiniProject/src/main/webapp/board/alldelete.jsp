<%@page import="data.dao.smartDao"%>
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
	String nums=request.getParameter("nums");

	//콤마로 분리해서 배열화
	String[] num=nums.split(",");
	
	smartDao dao=new smartDao();
	
	//배열의 길이만큼 삭제
	for(String n:num){
		dao.deleteSmart(n);
	}
	
	response.sendRedirect("../index.jsp?main=board/boardlist.jsp");
%>
</body>
</html>
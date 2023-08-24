<%@page import="model.intro.introDto"%>
<%@page import="model.intro.introDao"%>
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
	request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	String city=request.getParameter("city");
	String hp=request.getParameter("hp1")+'-'+request.getParameter("hp2")+'-'+request.getParameter("hp3");
	String blood=request.getParameter("blood");

	introDto dto=new introDto();
	
	dto.setName(name);
	dto.setCity(city);
	dto.setHp(hp);
	dto.setBlood(blood);
	
	introDao dao=new introDao();
	
	dao.insertIntro(dto);
	
	response.sendRedirect("list.jsp");
%>
</body>
</html>
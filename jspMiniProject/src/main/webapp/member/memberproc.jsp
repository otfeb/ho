<%@page import="data.dao.memberDao"%>
<%@page import="data.dto.memberDto"%>
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

	//데이터 읽어서 dto에 넣기
	memberDto dto=new memberDto();
	
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	String hp=request.getParameter("hp");
	String addr=request.getParameter("addr");
	String email=request.getParameter("email1")+"@"+request.getParameter("email2");
	
	dto.setId(id);
	dto.setName(name);
	dto.setPass(pass);
	dto.setHp(hp);
	dto.setAddr(addr);
	dto.setEmail(email);
	
	//dao선언 후 insert호출
	memberDao dao=new memberDao();
	dao.insertMember(dto);
	
	//gaipsuccess 페이지로 이동
	response.sendRedirect("../index.jsp?main=member/gaipsuccess.jsp?id="+id);
%>
</body>
</html>
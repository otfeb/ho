<%@page import="data.dao.memberDao"%>
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
<style type="text/css">
	#img1{
		z-index: 0;
	}
	#btn1 {
	position: absolute;
	top: 220px;
	left: 1350px;
	z-index: 1;
	}
	#btn2 {
	position: absolute;
	top: 220px;
	left: 1350px;
	z-index: 1;
	}
</style>
</head>
<%
	//절대경로잡기
	String root=request.getContextPath();
	//로그인 세션
	String loginok=(String)session.getAttribute("loginok");
	//아이디 얻기
	String myid=(String)session.getAttribute("myid");
	//dao에서 이름얻기
	memberDao dao=new memberDao();
	String name=dao.getName(myid);
%>
<body>
<a href="<%=root%>" style="color: black;"><img alt="" src="<%=root%>/image/head4.jpg" width="1520" height="200" id="img1"></a>

<%
if(loginok==null){%>
	<button type="button" class="btn btn-success" id="btn1" style="width: 100px;" 
	onclick="location.href='index.jsp?main=login/loginform.jsp'">Login</button>
<%}
else{%>
	<b><%=name %>님 로그인중...</b>
	<button type="button" class="btn btn-danger" id="btn2" style="width: 100px;" 
	onclick="location.href='login/logoutaction.jsp'">Logout</button>
<%}
%>
</body>
</html>
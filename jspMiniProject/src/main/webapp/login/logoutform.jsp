<<<<<<< HEAD
<%@page import="data.dao.memberDao"%>
=======
>>>>>>> 5749c17c491dae52e414b438e78f8152c8fda9bb
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
<<<<<<< HEAD
	<div style="margin: 100px 200px;">
		<img alt="" src="image/mushmom.webp" width="200" align="left">
		
		<%
		//세션으로부터 아이디를 얻는다
		String myid=(String)session.getAttribute("myid");
		
		//db에 있는 이름가져온다
		memberDao dao=new memberDao();
		String name=dao.getName(myid);
		%>
		
		<br><br>
		<b><%=name %>님이 로그인하셨습니다</b>
		<button type="button" class="btn btn-danger" onclick="location.href='login/logoutaction.jsp'">로그아웃</button>
	</div>
=======

>>>>>>> 5749c17c491dae52e414b438e78f8152c8fda9bb
</body>
</html>
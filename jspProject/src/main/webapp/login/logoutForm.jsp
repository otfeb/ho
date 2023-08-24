<%@page import="model.idx.idxDao"%>
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
	//세션으로부터 idok
	String id=(String)session.getAttribute("idok");

	//아이디에 해당하는 이름을 dao로부터 얻는다
	idxDao dao=new idxDao();
	String name=dao.getName(id);
%>

<br><br>
<b style="color: green;"><%=name %></b>님이 로그인중~~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="로그아웃" class="btn btn-danger" onclick="location.href='logoutAction.jsp'">
<br><br>
<img alt="" src="../avata/b2.png">
</body>
</html>
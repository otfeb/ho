<%@page import="db.quiz.QuizBoardDao"%>
<%@page import="db.quiz.QuizBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>

<style type="text/css">
.bi-arrow-left-square{
	font-size: 3em;
	color: gray;
}

</style>
</head>
<body>
<div><i class="bi bi-arrow-left-square" onclick="location.href='quizlist.jsp'"></i></div>
<%
	request.setCharacterEncoding("utf-8");	

	String num=request.getParameter("q_num");
	
	QuizBoardDao dao=new QuizBoardDao();
	QuizBoardDto dto=dao.getdata(num);
	dao.plusQuiz(num);
%>
<div><h3><%=dto.getContent() %></h3></div>
</body>
</html>
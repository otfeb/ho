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
	session.setAttribute("msg", "happy");
	session.setMaxInactiveInterval(10);		//디폴트는 30분
%>
<h2>10초안에 눌러주세요</h2>
<form action="sessionAction.jsp" method="post">
	<h2>가고싶은 여행지</h2>
	<input type="radio" value="베트남 3박4일" name="travel">베트남 3박4일&nbsp;
	<input type="radio" value="태국 2박3일" name="travel">태국 2박3일&nbsp;
	<input type="radio" value="오키나와 1박2일" name="travel">오키나와 1박2일&nbsp;
	<input type="radio" value="뉴질랜드 4박5일" name="travel">뉴질랜드 4박5일&nbsp;
	<input type="radio" value="스위스 8박9일" name="travel" checked>스위스 8박9일&nbsp;
	<input value="여행당첨" type="submit">
</form>
</body>
</html>
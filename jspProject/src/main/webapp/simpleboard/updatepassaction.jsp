<%@page import="db.simpleboard.simpleboardDao"%>
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
	//num,pass
	String num=request.getParameter("num");
	String pass=request.getParameter("pass");
	
	simpleboardDao dao=new simpleboardDao();
	
	//passCheck 호출
	boolean check=dao.getCheckPass(num, pass);
	
	//true면 수정폼,false면 경고창
	if(check){
		response.sendRedirect("updateform.jsp?num="+num);
	}
	else{%>
	<script>
		alert("비밀번호가 맞지않습니다");
		history.back();
	</script>
	<%}
%>
</body>
</html>
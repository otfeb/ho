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

	
	String name=request.getParameter("irum");
	String size=request.getParameter("size");
	String[] colors=request.getParameterValues("colors");
	String add=request.getParameter("add");
%>

	<h3>결과값 출력</h3>
	상품명: <%=name %><br>
	사이즈: <%=size %><br>
	<%for(int i=0;i<colors.length;i++){%>
	<div style="background-color:<%=colors[i]%>; width:50px; height:50px;"></div>
	<%}
	%>
	추가상품: <%=add %><br>
	
	
</body>
</html>
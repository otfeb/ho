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
	

	div.layout{
		border: 0px solid gray;
		position: absolute;
	}
	
	div.title{
		width: 100%;
		height: 80px;
		line-height: 30px;
		font-size: 30px;
		font-family: 'orbit';
		text-align: center;
	}
	div.menu{
		width: 100%;
		height: 80px;
		line-height: 80px;
		font-family: 'orbit';
		text-align: center;
		top: 200px;
	}
	div.info{
		width: 200px;
		height: 500px;
		line-height: 80px;
		font-family: 'orbit';
		left: 30px;
		top: 400px;
		padding: 20px 10px;
		
	}
	div.main{
		width: 1000px;
		height: 700px;
		font-size: 13pt;
		font-family: 'orbit';
		left: 330px;
		top: 400px;
		
	}
</style>
</head>
<body>
<%
	//절대경로잡기
	String root=request.getContextPath();
	String mainPage="layout/main.jsp";		//기본페이지

	//url을 통해서 main값을 얻어서 main페이지에 출력
	if(request.getParameter("main")!=null){
		mainPage=request.getParameter("main");
	}
%>
<div class="layout title">
	<jsp:include page="layout/title.jsp"/>
</div>
<div class="layout menu">
	<jsp:include page="layout/menu.jsp"/>
</div>
<div class="layout info">
	<jsp:include page="layout/info.jsp"/>
</div>
<div class="layout main">
	<jsp:include page="<%=mainPage %>"/>
</div>
</body>
</html>
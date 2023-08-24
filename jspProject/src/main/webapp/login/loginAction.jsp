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
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String save=request.getParameter("savechk");

//아이디와 비번이 맞는지 확인
idxDao dao=new idxDao();
boolean flag=dao.isLogin(id, pass);

//맞으면 세션지정 후 로그인메인으로 이동
if(flag){		//flag가 ture이면
	//로그인중인지 알수있는 세션저장
	session.setAttribute("loginok", "yes");
	//아이디 세션 저장
	session.setAttribute("idok", id);
	//체크값 세션 저장..체크하면 값-> on,체크 안하면-> null
	session.setAttribute("saveok", save);
	
	//세션 유지기간
	session.setMaxInactiveInterval(60*60*8); //8시간동안 유지(생략시 30분)
	//로그인 메인으로 이동
	response.sendRedirect("loginMain.jsp");
}
else{%>
	<script type="text/javascript">
		alert("아이디와 비밀번호가 맞지 않습니다");
		history.back();
	</script>
<%}

%>
</body>
</html>
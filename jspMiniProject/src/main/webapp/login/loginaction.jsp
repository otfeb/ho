<<<<<<< HEAD
<%@page import="data.dao.memberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu:wght@700&family=Nanum+Pen+Script&family=Single+Day&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String cbsave = request.getParameter("cbsave");

memberDao dao = new memberDao();
boolean b = dao.isIdPass(id, pass);

//아이디와 비번이 맞으면 3개의 세션을 저장하고 로그인 메인으로 이동
if(b){
   session.setMaxInactiveInterval(60*60*3);
   session.setAttribute("loginok", "yes");
   session.setAttribute("myid", id);
   session.setAttribute("saveok",cbsave==null?null:"yes");
   
   //로그인메인으로 이동
   response.sendRedirect("../index.jsp?main=login/loginmain.jsp");
}else{%>
   <script type="text/javascript">
      alert("아이디와 비밀번호가 일치하지 않습니다");
      history.back();
   </script>
<%}
%>
=======
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

>>>>>>> 5749c17c491dae52e414b438e78f8152c8fda9bb
</body>
</html>
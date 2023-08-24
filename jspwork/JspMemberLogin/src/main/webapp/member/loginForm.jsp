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
	div.loginform{
		width: 400px;
		height: 440px;
		border: 1px solid beige;
		border-radius: 20px;
		margin-top: 150px;
		margin-left: 200px;
		background-color: beige;
	}
	div form{
		margin-top: 20px;
		margin-left: 100px;
	}
	img{
		margin-left: 28px;
	}
</style>
</head>
<body>
<%
	//세션으로부터 아이디와 세이브체크값 얻기						//반환값이 object이기 때문에 String으로 형변환
	String myid=(String)session.getAttribute("idok");
	String saveid=(String)session.getAttribute("saveok");
	
	boolean save=true;
	
	if(saveid==null){
		myid="";
		save=false;
	}
%>
<div class="loginform">
	<form action="loginAction.jsp" method="post">
		<img alt="" src="../image/a02.png" width="140px">
		<input type="text" name="id" style="width: 200px;" class="form-control" placeholder="아이디"
		 required="required" value="<%=myid%>">
		 <br>
		 <input type="password" name="pass" style="width: 200px;" class="form-control" placeholder="비밀번호"
		 required="required">
		 <br>
		 <button type="submit" class="btn btn-success btn-lg" style="width: 200px;">로그인</button>
		 <br>
		 <input type="checkbox" name="savechk" <%=save?"checked":"" %>>아이디저장
		 <br><br>
		 <div style="color: gray; cursor: pointer;">비밀번호를 잊어버리셨나요?</div>
	</form>
</div>
</body>
</html>
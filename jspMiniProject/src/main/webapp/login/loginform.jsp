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
<<<<<<< HEAD
<%
	String saveok=(String)session.getAttribute("saveok");
	String myid="";
	if(saveok!=null){
		myid=(String)session.getAttribute("myid");
	}
%>
<body>
<div style="margin: 100px 200px;">
	<form action="login/loginaction.jsp" method="post">
		<table class="table table-bordered" style="width: 300px;">
			<caption align="top"><b>세션 로그인</b></caption>
			<tr>
				<td colspan="2" align="center">
					<input type="checkbox" name="cbsave" <%=saveok==null?"":"checked" %>>아이디저장
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id" class="form-control" required="required" style="width: 150px;" value="<%=myid%>">
				</td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="password" name="pass" class="form-control" required="required" style="width: 150px;">
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-success">로그인</button>
				</td>
			</tr>
		</table>
	</form>
</div>
=======
<body>

>>>>>>> 5749c17c491dae52e414b438e78f8152c8fda9bb
</body>
</html>
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
<style>
	#th3{
		width: 100px;
		background-color: #e6e6fa;
		text-align: center;
		line-height: 100px;
	}
	#imageSelect{
		
	}
</style>
</head>
<body>
<div style="margin: 50px; 100px;">
	<form action="insertAction.jsp" method="post">
		<table class="table table-bordered" style="width: 560px">
			<caption align="top"><b>간단 방명록</b></caption>
			<tr>
				<th width="80" style="background-color: #e6e6fa">닉네임</th>
				<td>
					<input type="text" name="nick" required="required" style="width: 120px;">
				</td>
			</tr>
			<tr>
				<th width="100" style="background-color: #e6e6fa">비밀번호</th>
				<td>
					<input type="password" name="pass" required="required" style="width: 120px;">
				</td>
			</tr>
			
			<tr>
				<th id="th3">이미지선택</th>
				<td id="imageSelect">
				<%
					for(int i=1;i<=10;i++){%>
						<img src='../avata/b<%=i%>.png' width="40px;">
					<%}
				%>
					<br>
				<%
					for(int i=1;i<=10;i++){%>
						&nbsp;&nbsp;<input type="radio" name="image" value="<%=i%>">&nbsp;&nbsp;&nbsp;
					<%}
				%>	
				</td>
			</tr>
			
			<tr>
				<td colspan="4">
				<textarea style="width: 560px; height: 150px" name="story"></textarea>
			</tr>
			
			<tr>
				<td colspan="4" align="center">
					<input type="submit" value="저장" class="btn btn-info">
					<input type="button" value="목록" class="btn btn-success" onclick="location.href='guestList.jsp'">
			</tr>
			
		</table>
	</form>
	</div>
</body>
</html>
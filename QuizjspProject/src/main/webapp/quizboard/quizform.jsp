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

</style>
</head>
<body>
<form action="quizaction.jsp" method="post" enctype="multipart/form-data">
	<table class="table table-bordered" style="width: 420px; margin: 30px 40px;">
		<tr>
			<th style="text-align: center; width: 80px;" valign="middle">작성자</th>
			<td>
				<input type="text" class="form-control" required="required" name="writer"
				style="width: 300px;">
			</td>
		</tr>
		
		
		<tr>
			<th style="text-align: center;" valign="middle">제목</th>
			<td>
				<input type="text" class="form-control" required="required" name="title"
				style="width: 300px;">
			</td>
		</tr>
		
		<tr>
			<th style="text-align: center;" valign="middle">내용</th>
			<td>
				<textarea style="width: 300px; height: 150px;" name="content"></textarea>
			</td>
		</tr>
		
		<tr>
			<th style="text-align: center;" valign="middle">이미지</th>
			<td>
				<input type="file" class="form-control" name="imgname" style="width: 300px;">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-outline-success"><i class="bi bi-check2-circle"></i>등록</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='quizlist.jsp'"><i class="bi bi-list-check"></i>목록</button>
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>
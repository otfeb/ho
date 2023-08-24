<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.quiz.QuizBoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.quiz.QuizBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
i {
	cursor: pointer;
}

.hrr {
	border: 0;
	height: 2px;
	background: black;
	width: 1480px;
	margin-left: 20px;
}
</style>
</head>
<body>
	<%
	QuizBoardDao dao = new QuizBoardDao();
	ArrayList<QuizBoardDto> list = dao.selectQuiz();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	%>

		<h2 style="margin: 20px 20px;">전체글보기</h2>
		<b style="margin: 20px 20px;"><%=list.size()%>개의 글</b>
		<div style="float: right; margin-right: 40px">
			<input type="checkbox">&nbsp;공지 숨기기 | <i class="bi bi-grid"
				onclick="location.href='quizimagelist.jsp'"></i>&nbsp; <i
				class="bi bi-card-text" onclick="location.href='quizlist.jsp'"></i>
		</div>

		<hr class="hrr">
		
					<%
					for (int i = 0; i < list.size(); i++) {
						QuizBoardDto dto = list.get(i);
						%>
						<table class="table" style="float: left; width: 300px;">
							<tr>
								<td><img src="<%=dto.getImgname()%>" width="250px;"><br>
									<b>작성자: <%=dto.getWriter()%></b><br> <b>제목: <%=dto.getTitle()%></b>
								</td>
							</tr>
						</table>
					<%}
					%>
	</body>
</html>
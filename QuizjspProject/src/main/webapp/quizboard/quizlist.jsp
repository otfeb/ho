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
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
i{
	cursor: pointer;
}

.hrr{
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
	QuizBoardDao dao=new QuizBoardDao();
	ArrayList<QuizBoardDto> list=dao.selectQuiz();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<script type="text/javascript">
	$(function(){
		$("#chk").change(function(){
			if($("#chk").is(":checked")){
				$("#tab").hide();
			}
			else{
				$("#tab").show();
			}
		});
	});
</script>

<div>
	<h2 style="margin: 20px 20px;">전체글보기</h2>
	<b style="margin: 20px 20px;"><%=list.size() %>개의 글</b>
	<button type="button" class="btn btn-outline-info btn-sm" onclick="location.href='quizform.jsp'">글쓰기</button>
	<div style="float: right; margin-right: 40px">
		<input type="checkbox" id="chk">&nbsp;공지 숨기기 |  
		<i class="bi bi-grid" onclick="location.href='quizimagelist.jsp'"></i>&nbsp;
		<i class="bi bi-card-text" onclick="location.href='quizlist.jsp'"></i>
	</div>
	
	<hr class="hrr">
	
	<table class="table table-striped" style="width:900px; margin: 20px 20px;" id="tab">
		<tr>
			<th width="60">번호</th>
			<th width="120">작성자</th>
			<th width="180">제목</th>
			<th width="150">작성일</th>
			<th width="80">조회수</th>
		</tr>
		
		<%
		for(int i=0;i<list.size();i++){
			QuizBoardDto dto=list.get(i);
			int no=list.size()-i;
		%>
			<tr>
				<td>no.<%=no %></td>
				<td><%=dto.getWriter() %></td>
				<td>
					<label style="cursor: pointer;" onclick="location.href='contentview.jsp?q_num=<%=dto.getQ_num()%>'"><%=dto.getTitle() %>&nbsp;<img src="<%=dto.getImgname()%>" width="40"></label>
				</td>
				<td><%=sdf.format(dto.getWriteday()) %></td>
				<td><%=dto.getReadcount() %></td>
			</tr>
		<%}
		%>
	</table>
</div>
</body>
</html>
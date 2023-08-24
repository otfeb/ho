<%@page import="model.myteam.TeamDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.myteam.TeamDto"%>
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
<%
TeamDao dao=new TeamDao();
ArrayList<TeamDto> list=dao.getAllmyTeams();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
	<a href="addForm.jsp">팀원추가</a>
	<br>
	<table class="table table-bordered" style="width:800px">
		<tr>
			<th width="60">번호</th>
			<th width="120">이름</th>
			<th width="100">운전면허</th>
			<th width="260">주소</th>
			<th width="160">작성일</th>
			<th width="120">수정|삭제</th>
		</tr>
		<%
			for(int i=0;i<list.size();i++){
				TeamDto dto=list.get(i);
			%>
			<tr>
				<td><%=i+1 %></td>
				<td><%=dto.getName() %></td>
				<td><%=dto.getDriver() %></td>
				<td><%=dto.getAddr() %></td>
				<td><%=sdf.format(dto.getWriteday()) %></td>
				<td>
					<button type="button" class="btn btn-outline-info btn-sm" onclick="location.href='updateform.jsp?num=<%=dto.getNum() %>'">수정</button>
					<button type="button" id="btn1" class="btn btn-outline-danger btn-sm" onclick=del(<%=dto.getNum() %>)>삭제</button>
				</td>
				
			</tr>
		<%}
		%>
		<script>
			function del(num){
				var a=confirm("정말 삭제하겠습니까?")
				
				if(a){
					alert("삭제완료")
					location.href='teamdelete.jsp?num='+num;
				}
				else{
					alert("ㄴㄴ")
				}
			}
			
		</script>
	</table>
</body>

</html>
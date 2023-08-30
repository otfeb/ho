<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="data.dto.memberDto"%>
<%@page import="data.dao.memberDao"%>
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
<script type="text/javascript">
	function delfunc(num) {
		var yes=confirm("강퇴처리 하시겠습니까?");
		if(yes){
			location.href="member/memberdelete.jsp?num="+num;
		}
	}
</script>
</head>
<%
	memberDao dao=new memberDao();
	List<memberDto> list=dao.getAllMembers();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
	<table class="table table-bordered" style="width: 1100px;">
		<caption align="top"><b>전체 회원 목록</b></caption>
		<tr class="table-secondary" align="center">
			<th width="80">번호</th>
			<th width="150">이름</th>
			<th width="150">아이디</th>
			<th width="250">핸드폰</th>
			<th width="300">주소</th>
			<th width="280">이메일</th>
			<th width="250">가입일</th>
			<th width="80">삭제</th>
		</tr>
		<%for(int i=0;i<list.size();i++){ 
			memberDto dto=list.get(i);
		%>
		<tr>
			<td>no.<%=i+1 %></td>
			<td><%=dto.getName() %></td>
			<td><%=dto.getId() %></td>
			<td><%=dto.getHp() %></td>
			<td><%=dto.getAddr() %></td>
			<td><%=dto.getEmail() %></td>
			<td><%=sdf.format(dto.getGaipday()) %></td>
			<td>
				<button type="button" class="btn btn-outline-danger btn-sm" onclick="delfunc(<%=dto.getNum()%>)">강퇴</button>
			</td>
			
		</tr>
			<%}
		%>
	</table>
</head>
<body>
</body>
</html>
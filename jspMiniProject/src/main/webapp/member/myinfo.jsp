<%@page import="data.dto.memberDto"%>
<%@page import="java.util.List"%>
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
	$(function(){
		$(".btndelete").click(function(){
			var num=$(this).attr("num");
			//alert(num);
			var ans = confirm("정말 탈퇴하시겠어요?");
			
			if(ans){
				location.href="member/deleteme.jsp?num="+num;
			}
		});
	});
</script>
</head>
<%
memberDao dao=new memberDao();
List<memberDto> list=dao.getAllMembers();
String myid=(String)session.getAttribute("myid");
String loginok=(String)session.getAttribute("loginok");
%>
<body>
	<table class="table" style="width: 650px;">
		<%
			for(memberDto dto:list){
				if(loginok.equals("yes") && dto.getId().equals(myid)){%>
					<tr>
					<td style="width: 200px; align: center" rowspan="5">
						<img src="image/mush.gif" style="width: 150px; height: 200px; border-radius: 30px;">
					</td>
					<td>이름: <%=dto.getName() %></td>
					<td width= "200" align= "center" valign= "middle" rowspan= "5">
						<button type="button" class="btn btn-outline-info" onclick="location.href='index.jsp?main=member/updateform.jsp?num=<%=dto.getNum()%>'">수정</button>
						<button type="button" class="btn btn-outline-danger btndelete" num=<%=dto.getNum() %>>탈퇴</button>
					</td>
				</tr>
				<tr>
					<td>아이디: <%=dto.getId() %></td>
				</tr>
				<tr>
					<td>핸드폰: <%=dto.getHp() %></td>
				</tr>
				<tr>
					<td>주소: <%=dto.getAddr() %></td>
				</tr>
				<tr>
					<td>이메일: <%=dto.getEmail() %></td>
				</tr>
				<%}
				%>
				
			<%}
		%>
		
	</table>

</body>
</html>
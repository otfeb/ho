<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
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
pre{
    padding:10px;
    overflow: auto;
    white-space: pre-wrap; /* pre tag내에 word wrap */
}
</style>
</head>
<body>

<%
	SimpleGuestDao dao=new SimpleGuestDao();
	ArrayList<SimpleGuestDto> list=dao.selectSimpleGuest();
	SimpleDateFormat sdf=new SimpleDateFormat();
%>

	<button type="button" class="btn btn-success" onclick="location.href='insertForm.jsp'">글쓰기</button>
	<br><br>
		<table class="table table bordered" style="width:700px;">
			
			<%
				if(list.size()==0){%>
					<tr>
						<td colspan="2" align="center">
							<h5>등록된 정보가 없습니다</h5>
						</td>
					</tr>
				<%}
				else{
					for(int i=0;i<list.size();i++){
						SimpleGuestDto dto=list.get(i);
						int no=list.size()-i;
						%>
						<tr>
							<td>
								<b>No.<%=no %></b>
								<b><%=dto.getNick() %></b>
							</td>
							<td align="right">
								<b><%=sdf.format(dto.getWriteday()) %></b>
							</td>
						</tr>
						<tr height="100">
							<td colspan="2" valign="top">
								<img src="<%=dto.getImage() %>" align="left">
								<pre>
									<%=dto.getStory() %>
								</pre>
							</td>
						</tr>
						<tr>
							<td align="right" colspan="2">
								<input type="button" class="btn btn-success" value="수정" 
								onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">
								<input type="button" class="btn btn-danger" value="삭제" onclick="del(<%=dto.getPass()%>,<%=dto.getNum()%>)">
							</td>
						</tr>
					<%}
				}
			%>
			
			<script>
				function del(pass,num){
					var s=prompt("비밀번호를 입력해주세요");
					if(pass==s){
						location.href='deleteAction.jsp?num='+num;
					}
					else{
						alert("틀린 비번!!");
					}
				}
			</script>
		</table>
</body>
</html>
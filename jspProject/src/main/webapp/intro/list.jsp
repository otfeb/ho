<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.intro.introDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.intro.introDao"%>
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
<body>
<%
	introDao dao=new introDao();
	ArrayList<introDto> list=dao.selectIntro();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>

<div>
	<button type="button" class="btn btn-info" onclick="location.href='addForm.jsp'">정보추가</button>
	<br><br>
	<table class="table table-bordered" style="width: 800px;">
	<tr width="60">
		<th width="120">번호</th>
		<th width="120">이름</th>
		<th width="120">지역</th>
		<th width="180">전화번호</th>
		<th width="120">혈액형</th>
		<th width="180">가입일</th>
		<th width="160">수정|삭제</th>
	</tr>
	
	<%
	if(list.size()==0){%>	<%-- insert아무것도 안했을 경우 --%>
		<tr>
			<td colspan="7" align="center">
				<h5>등록된 정보가 없습니다</h5>
			</td>
		</tr>
	<%}
	else{
		
		for(int i=0;i<list.size();i++){
			introDto dto=list.get(i);
			%>
			
			<tr>
				<td align="center"><%=(i+1) %></td>
				<td align="center" valign="middle"><%=dto.getName() %></td>
				<td align="center" valign="middle"><%=dto.getBlood() %></td>
				<td align="center" valign="middle"><%=dto.getHp() %></td>
				<td align="center" valign="middle"><%=dto.getCity() %></td>
				<td align="center" valign="middle"><%=sdf.format(dto.getGaipday()) %></td>
				<td>
					<button type="button" class="btn btn-success btn-sm" onclick="location.href=''">수정</button>
					<button type="button" class="btn btn-danger btn-sm" onclick="location.href='deleteIntro.jsp?intro_num=<%=dto.getNum()%>'">삭제</button>
				</td>
			</tr>
			
		<%}
	}
	%>
</div>
</body>
</html>
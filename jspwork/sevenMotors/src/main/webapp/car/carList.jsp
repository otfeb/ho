<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.car.carDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.car.carDao"%>
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
	tr:hover{
		background-color: white;
	}
</style>
</head>

<body>
<%
	carDao dao=new carDao();
	ArrayList<carDto> list=dao.selectCar();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<div>
	<button type="button" class="btn btn-outline-secondary" onclick="location.href='insertForm.jsp'">차량추가</button>
	<br><br>
	<table class="table table-dark" style="width: 1000px;">
	<tr width="60" align="center" class="table-active">
		<th width="120">번호</th>
		<th width="150">차주명</th>
		<th width="180">차종</th>
		<th width="200">차량번호</th>
		<th width="200">부품</th>
		<th width="250">등록일</th>
		<th width="180">수정|삭제</th>
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
			carDto dto=list.get(i);
			%>
			<tr>
			
				<td align="center">
					<b>No.<%=(i+1) %></b><br>
					<img alt="" src="<%=dto.getCimage()%>" style="width: 150px;">
				</td>
				<td align="center" valign="middle"><%=dto.getName() %></td>
				<td align="center" valign="middle"><%=dto.getCname() %></td>
				<td align="center" valign="middle"><%=dto.getCid() %></td>
				<td align="center" valign="middle"><%=dto.getDevice() %></td>
				<td align="center" valign="middle"><%=sdf.format(dto.getCdate()) %></td>
				<td align="center" valign="middle">
					<button type="button" class="btn btn-outline-success btn-sm" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
					<button type="button" class="btn btn-outline-danger btn-sm" onclick=del(<%=dto.getNum()%>)>삭제</button>
				</td>
				
			</tr>

		<%}
	}
	%>
	
	<script>
		function del(num){
			var a=confirm("정말 삭제하겠습니까?")
			
			if(a){
				location.href="deleteCar.jsp?num="+num;
			}
		}
	</script>
</div>
</body>
</html>
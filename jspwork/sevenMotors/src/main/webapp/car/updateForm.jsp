<%@page import="model.car.carDto"%>
<%@page import="model.car.carDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Gasoek+One&family=Noto+Sans+KR:wght@500&family=Orbit&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>

</head>
<%
	String num=request.getParameter("num");
	carDao dao=new carDao();
	carDto dto=dao.getData(num);
	
	String[] devices=dto.getDevice().split(" ");
	
%>
<body>
	<div style="margin: 50px; 100px;">
		<form action="updateAction.jsp" method="post" enctype="multipart/form-data"
			class="form-inline" id="mfrm">
			<input type="hidden" name="num" value="<%=num%>">
			<table class="table table-bordered" style="width: 500px;">
				<caption align="top">
					<b>견적수정</b>
				</caption>
				<tr>
					<td style="background-color: #66cdaa" width="120">차주이름</td>
					<td><b><%=dto.getName() %></b></td>
				</tr>
				<tr>
					<td style="background-color: #66cdaa" width="120">차종</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="cname" required="required" value="<%=dto.getCname()%>"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">차량번호</td>
					<td><input type="text" class="form-control"
						style="width: 120px;" name="cid" required="required" value="<%=dto.getCid()%>"></td>
				</tr>

				<tr>
					<td style="background-color: #66cdaa" width="120">차량이미지</td>
					<td><input type="file" class="form-control"
						style="width: 250px;" name="uploadImage" value="<%=dto.getCimage()%>"></td>
				</tr>
				
				<tr>
					<td style="background-color: #66cdaa" width="120">부품</td>
					<td>
						<input type="checkbox" name="device" value="엔진오일">엔진오일
						<input type="checkbox" name="device" value="타이어">타이어
						<input type="checkbox" name="device" value="엔진">엔진
						<input type="checkbox" name="device" value="백미러">백미러
					</td>
				</tr>
				
				

				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-success">견적수정</button>
						<button type="button" class="btn btn-warning"
							onclick="location.href='carList.jsp'">회원목록</button>
					</td>
				</tr>
				
			</table>
		</form>
	</div>

	
</body>
</html>
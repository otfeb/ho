<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.mymall.MallDto"%>
<%@page import="model.mymall.MallDao"%>
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
	MallDao dao=new MallDao();
	ArrayList<MallDto> list=dao.selectMymall();
	NumberFormat nf=NumberFormat.getCurrencyInstance();
%>

<div>
	<h3 class="alert alert-info" style="width: 600px"></h3>
	<br>
	<button type="button" onclick="location.href='addForm.jsp'">상품추가</button>
	<br><br>
	<table class="table table-bordered" style="width: 800px;">
	<tr width="60">
		<th width="120">번호</th>
		<th width="180">상품명</th>
		<th width="100">가격</th>
		<th width="200">입고일</th>
		<th width="200">등록일</th>
		<th width="160">수정|삭제</th>
	</tr>
		
		
		<%
		if(list.size()==0){%>
			<tr>
				<td colspan="6" align="center">
					<h5>등록된 상품이 없습니다</h5>
				</td>
			</tr>
		<%}
		else{
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH시");
			
			for(int i=0;i<list.size();i++){
				MallDto dto=list.get(i);
				%>
				
				<tr>
					<td align="center"><%=(i+1)%></td>
					<td>
						<img alt="" src="<%=dto.getPhoto()%>" width="60" height="60"
						 class="img-thumbnail">
						 <br>
						 <b><%=dto.getSangpum() %></b>
					</td>
					<td align="center" valign="middle"><%=dto.getPrice()%></td>
					<td align="center" valign="middle"><%=dto.getIpgoday() %></td>
					<td valign="middle"><%=sdf.format(dto.getWriteday()) %></td>
					<td>
						<button type="button" class="btn btn-success btn-sm" onclick="location.href='updateForm.jsp?no=<%=dto.getNo()%>'">수정</button>
						<button type="button" class="btn btn-danger btn-sm" onclick="location.href='malldelete.jsp?no=<%=dto.getNo()%>'">삭제</button>
					</td>
				</tr>
			<%}
		}
		%>
		
		<script>
			
		</script>
	</table>
</div>
</body>
</html>
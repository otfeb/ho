<%@page import="java.text.NumberFormat"%>
<%@page import="data.dao.memberDao"%>
<%@page import="data.dto.shopDto"%>
<%@page import="data.dao.shopDao"%>
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
	img.large{
		width: 450px;
		height: 520px;
	}
</style>
<script type="text/javascript">
	$(function(){
		$("#btncart").click(function(){
			var formdata=$("#frm").serialize();
			
			alert(formdata);
		});
	});
</script>
</head>
<%
	String shopnum=request.getParameter("shopnum");

	//로그인상태
	String loginok=(String)session.getAttribute("loginok");
	//로그인한 아이디
	String myid=(String)session.getAttribute("myid");
	//아이디에 해당하는 맴버의 시퀀스
	memberDao mdao=new memberDao();
	String num=mdao.getNum(myid);
	

	shopDao dao=new shopDao();
	shopDto dto=dao.getData(shopnum);
%>
<body>
	<form id="frm">
		<!-- hidden -->
		<input type="hidden" name="shopnum" value="<%=shopnum%>">
		<input type="hidden" name="num" value="<%=num%>">
		
		<table style="width: 800px;">
			<tr>
				<td>
					<div>
						<img alt="" src="shopsave/<%=dto.getPhoto()%>" class="img-thumbnail large">
					</div>
				</td>
				<h3>카테고리: <%=dto.getCategory() %></h3>
				<h3>상품명: <%=dto.getSangpum() %></h3>
				<%
				NumberFormat nf=NumberFormat.getCurrencyInstance();
				%>
				<h3>가격: <%=nf.format(dto.getPrice()) %></h3>
				
				<h3>
				개수:
					<input type="number" min="1" max="10" value="1" step="1" name="cnt">
				</h3>
				
				<div>
					<button type="button" class="btn btn-success" id="btncart">장바구니</button>
					<button type="button" class="btn btn-warning" onclick="location.href='index.jsp?main=shop/shoplist.jsp'">상품목록</button>
				</div>
			</tr>
		</table>
	</form>
</body>
</html>
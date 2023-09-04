<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.dto.shopDto"%>
<%@page import="java.util.List"%>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("a.godetail").click(function(){
		var shopnum=$(this).attr("shopnum");
		//alert(shopnum);
		location.href="index.jsp?main=shop/detailpage.jsp?shopnum="+shopnum;
	});
});
</script>
</head>
<body>
<%
shopDao dao=new shopDao();
List<shopDto> list=dao.selectShop();
%>

<div class="container mt-3">
  <h2>상품 목록</h2>
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-bs-toggle="tab" href="#tabs-1">전체</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#tabs-2">아우터</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#tabs-3">상의</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#tabs-4">하의</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#tabs-5">악세서리</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="tab" href="#tabs-6">세트</a>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="tabs-1" class="container tab-pane active"><br>
      <p>
      	<table class="table table-bordered" style="width: 700px;">
      		<caption align="top"><b>전체상품목록</b></caption>
      		<tr>
      			<%
      			NumberFormat nf=NumberFormat.getCurrencyInstance();
      			int i=0;
      			for(shopDto dto:list){
      				String photo=dto.getPhoto();
      				
      				//20~50까지 랜덤 할인율
      				int sale=(int)(Math.random()*31)+20;
      				%>
      				<td>
      					<a shopnum="<%=dto.getShopnum()%>" style="cursor: pointer;" class="godetail">
      						<img alt="" src="shopsave/<%=photo%>" class="photo" style="width: 170px; height: 200px; border: 1px solid gray; border-radius: 20px;">
      					</a>
      					<br>
      					<%=dto.getSangpum() %><br>
      					<b style="color: red; font-size: 1.2em;"><%=sale %>%</b>
      					<span style="float: right;">
      						<div style="color: gray; font-size: 13px;">
      							<%
      							int price=(int)(dto.getPrice()-(dto.getPrice())*(sale/100.0));
      							%>
      							<%=nf.format(price) %>
      						</div>
      						<div style="color: black; font-size: 16px;">
      							<strike><%=nf.format(dto.getPrice()) %></strike>
      						</div>
      					</span>
      				</td>
      				<%
      				i++;
      				if(i%5==0){%>
      					</tr>
      					<tr>
      				<%}
      				%>
      			<%}
      			%>
      		</tr>
      	</table>
      </p>
    </div>
    
   <div id="tabs-2" class="container tab-pane"><br>
      <p>
      	<table class="table table-bordered" style="width: 700px;">
      		<caption align="top"><b>아우터상품목록</b></caption>
      		<tr>
      			<%
      			//NumberFormat nf=NumberFormat.getCurrencyInstance();
      			i=0;
      			for(shopDto dto:list){
      				if(dto.getCategory().equals("아우터")){
      				String photo=dto.getPhoto();
      				
      				//20~50까지 랜덤 할인율
      				int sale=(int)(Math.random()*31)+20;
      				%>
      				<td>
      					<a shopnum="<%=dto.getShopnum()%>" style="cursor: pointer;" class="godetail"><img alt="" src="shopsave/<%=photo%>" class="photo" 
      					style="width: 170px; height: 200px; border: 1px solid gray; border-radius: 20px;">
      					</a>
      					<br>
      					<%=dto.getSangpum() %><br>
      					<b style="color: red; font-size: 1.2em;"><%=sale %>%</b>
      					<span style="float: right;">
      						<div style="color: gray; font-size: 13px;">
      							<%
      							int price=(int)(dto.getPrice()-(dto.getPrice())*(sale/100.0));
      							%>
      							<%=nf.format(price) %>
      						</div>
      						<div style="color: black; font-size: 16px;">
      							<strike><%=nf.format(dto.getPrice()) %></strike>
      						</div>
      					</span>
      				</td>
      				<%
      				i++;
      				if(i%5==0){%>
      					</tr>
      					<tr>
      				<%}
      				%>
      				<%}
      				%>
      			<%}
      			%>
      		</tr>
      	</table>
      </p>
    </div>
    
    <div id="tabs-3" class="container tab-pane"><br>
      <p>
      	<table class="table table-bordered" style="width: 700px;">
      		<caption align="top"><b>상의상품목록</b></caption>
      		<tr>
      			<%
      			//NumberFormat nf=NumberFormat.getCurrencyInstance();
      			i=0;
      			for(shopDto dto:list){
      				if(dto.getCategory().equals("상의")){
      				String photo=dto.getPhoto();
      				
      				//20~50까지 랜덤 할인율
      				int sale=(int)(Math.random()*31)+20;
      				%>
      				<td>
      					<a shopnum="<%=dto.getShopnum()%>" style="cursor: pointer;" class="godetail"><img alt="" src="shopsave/<%=photo%>" class="photo" 
      					style="width: 170px; height: 200px; border: 1px solid gray; border-radius: 20px;">
      					</a>
      					<br>
      					<%=dto.getSangpum() %><br>
      					<b style="color: red; font-size: 1.2em;"><%=sale %>%</b>
      					<span style="float: right;">
      						<div style="color: gray; font-size: 13px;">
      							<%
      							int price=(int)(dto.getPrice()-(dto.getPrice())*(sale/100.0));
      							%>
      							<%=nf.format(price) %>
      						</div>
      						<div style="color: black; font-size: 16px;">
      							<strike><%=nf.format(dto.getPrice()) %></strike>
      						</div>
      					</span>
      				</td>
      				<%
      				i++;
      				if(i%5==0){%>
      					</tr>
      					<tr>
      				<%}
      				%>
      				<%}
      				%>
      			<%}
      			%>
      		</tr>
      	</table>
      </p>
    </div>
    
    <div id="tabs-4" class="container tab-pane"><br>
      <p>
     	 <table class="table table-bordered" style="width: 700px;">
      		<caption align="top"><b>하의상품목록</b></caption>
      		<tr>
      			<%
      			//NumberFormat nf=NumberFormat.getCurrencyInstance();
      			i=0;
      			for(shopDto dto:list){
      				if(dto.getCategory().equals("하의")){
      				String photo=dto.getPhoto();
      				
      				//20~50까지 랜덤 할인율
      				int sale=(int)(Math.random()*31)+20;
      				%>
      				<td>
      					<a shopnum="<%=dto.getShopnum()%>" style="cursor: pointer;" class="godetail"><img alt="" src="shopsave/<%=photo%>" class="photo" 
      					style="width: 170px; height: 200px; border: 1px solid gray; border-radius: 20px;">
      					</a>
      					<br>
      					<%=dto.getSangpum() %><br>
      					<b style="color: red; font-size: 1.2em;"><%=sale %>%</b>
      					<span style="float: right;">
      						<div style="color: gray; font-size: 13px;">
      							<%
      							int price=(int)(dto.getPrice()-(dto.getPrice())*(sale/100.0));
      							%>
      							<%=nf.format(price) %>
      						</div>
      						<div style="color: black; font-size: 16px;">
      							<strike><%=nf.format(dto.getPrice()) %></strike>
      						</div>
      					</span>
      				</td>
      				<%
      				i++;
      				if(i%5==0){%>
      					</tr>
      					<tr>
      				<%}
      				%>
      				<%}
      				%>
      			<%}
      			%>
      		</tr>
      	</table>
      </p>
    </div>
    
    <div id="tabs-5" class="container tab-pane"><br>
      <p>
      	<table class="table table-bordered" style="width: 700px;">
      		<caption align="top"><b>악세서리상품목록</b></caption>
      		<tr>
      			<%
      			//NumberFormat nf=NumberFormat.getCurrencyInstance();
      			i=0;
      			for(shopDto dto:list){
      				if(dto.getCategory().equals("악세서리")){
      				String photo=dto.getPhoto();
      				
      				//20~50까지 랜덤 할인율
      				int sale=(int)(Math.random()*31)+20;
      				%>
      				<td>
      					<a shopnum="<%=dto.getShopnum()%>" style="cursor: pointer;" class="godetail"><img alt="" src="shopsave/<%=photo%>" class="photo" 
      					style="width: 170px; height: 200px; border: 1px solid gray; border-radius: 20px;">
      					</a>
      					<br>
      					<%=dto.getSangpum() %><br>
      					<b style="color: red; font-size: 1.2em;"><%=sale %>%</b>
      					<span style="float: right;">
      						<div style="color: gray; font-size: 13px;">
      							<%
      							int price=(int)(dto.getPrice()-(dto.getPrice())*(sale/100.0));
      							%>
      							<%=nf.format(price) %>
      						</div>
      						<div style="color: black; font-size: 16px;">
      							<strike><%=nf.format(dto.getPrice()) %></strike>
      						</div>
      					</span>
      				</td>
      				<%
      				i++;
      				if(i%5==0){%>
      					</tr>
      					<tr>
      				<%}
      				%>
      				<%}
      				%>
      			<%}
      			%>
      		</tr>
      	</table>
      </p>
    </div>
    
    <div id="tabs-6" class="container tab-pane"><br>
      <p>
     	 <table class="table table-bordered" style="width: 700px;">
      		<caption align="top"><b>세트상품목록</b></caption>
      		<tr>
      			<%
      			//NumberFormat nf=NumberFormat.getCurrencyInstance();
      			i=0;
      			for(shopDto dto:list){
      				if(dto.getCategory().equals("세트")){
      				String photo=dto.getPhoto();
      				
      				//20~50까지 랜덤 할인율
      				int sale=(int)(Math.random()*31)+20;
      				%>
      				<td>
      					<a shopnum="<%=dto.getShopnum()%>" style="cursor: pointer;" class="godetail"><img alt="" src="shopsave/<%=photo%>" class="photo" 
      					style="width: 170px; height: 200px; border: 1px solid gray; border-radius: 20px;">
      					</a>
      					<br>
      					<%=dto.getSangpum() %><br>
      					<b style="color: red; font-size: 1.2em;"><%=sale %>%</b>
      					<span style="float: right;">
      						<div style="color: gray; font-size: 13px;">
      							<%
      							int price=(int)(dto.getPrice()-(dto.getPrice())*(sale/100.0));
      							%>
      							<%=nf.format(price) %>
      						</div>
      						<div style="color: black; font-size: 16px;">
      							<strike><%=nf.format(dto.getPrice()) %></strike>
      						</div>
      					</span>
      				</td>
      				<%
      				i++;
      				if(i%5==0){%>
      					</tr>
      					<tr>
      				<%}
      				%>
      				<%}
      				%>
      			<%}
      			%>
      		</tr>
      	</table>
      </p>
    </div>
  </div>
</div>
</body>
</html>
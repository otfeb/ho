<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
<%
	
	request.setCharacterEncoding("utf-8");

	SimpleGuestDao dao=new SimpleGuestDao();

	String image=request.getParameter("image");
	String nick=request.getParameter("nick");
	String pass=request.getParameter("pass");
	String story=request.getParameter("story");
	
	SimpleGuestDto dto=new SimpleGuestDto();
	
	dto.setImage(image);
	dto.setNick(nick);
	dto.setPass(pass);
	dto.setStory(story);
	
	dao.insertSimpleGuest(dto);
	
	response.sendRedirect("guestList.jsp");
	
%>  
--%>

<!-- 자바빈즈로 변경하려면?
	useBean은 new로 객체를 생성하는것과 같음 -->
	<%
		request.setCharacterEncoding("utf-8");
	%>
	
	<jsp:useBean id="dao" class="db.simpleguest.SimpleGuestDao"/>
	<jsp:useBean id="dto" class="db.simpleguest.SimpleGuestDto"/>
	
	<jsp:setProperty property="*" name="dto"/>
	
	<%
		dao.insertSimpleGuest(dto);
	
		response.sendRedirect("guestList.jsp");
	%>


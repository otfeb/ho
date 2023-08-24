<%@page import="model.intro.introDto"%>
<%@page import="model.intro.introDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	introDao dao=new introDao();

	String num=request.getParameter("intro_num");
	
	dao.deleteIntro(num);
	
	response.sendRedirect("list.jsp");
%>
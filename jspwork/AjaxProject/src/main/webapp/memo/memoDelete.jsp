<%@page import="db.memo.memoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	memoDao dao=new memoDao();
	
	//엔코딩
	request.setCharacterEncoding("utf-8");
	
	String num=request.getParameter("num");
	
	dao.deleteMemo(num);
%>
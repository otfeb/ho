<%@page import="db.ajaxBoard.ajaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	ajaxBoardDao dao=new ajaxBoardDao();
	String num=request.getParameter("num");
	dao.deleteBoard(num);
%>
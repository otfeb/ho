<%@page import="db.ajaxBoard.ajaxBoardDto"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="db.ajaxBoard.ajaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	ajaxBoardDao dao=new ajaxBoardDao();

	String num=request.getParameter("unum");
	String writer=request.getParameter("uwriter");
	String subject=request.getParameter("usubject");
	String story=request.getParameter("ustory");
	String avata=request.getParameter("uavata");

	ajaxBoardDto dto=new ajaxBoardDto();
	
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setStory(story);
	dto.setAvata(avata);
	
	dao.updateBoard(dto);
	
%>
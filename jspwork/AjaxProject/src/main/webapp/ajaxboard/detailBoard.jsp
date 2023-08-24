<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="db.ajaxBoard.ajaxBoardDto"%>
<%@page import="db.ajaxBoard.ajaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	ajaxBoardDao dao=new ajaxBoardDao();

	String num=request.getParameter("num");
	
	ajaxBoardDto dto=dao.getData(num);
	
	JSONObject ob=new JSONObject();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	
	ob.put("num", dto.getNum());
	ob.put("writer", dto.getWriter());
	ob.put("subject", dto.getSubject());
	ob.put("story", dto.getStory());
	ob.put("avata", dto.getAvata());
	ob.put("writeday", sdf.format(dto.getWriteday()));
%>

<%=ob.toString()%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.guestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//num
	String num=request.getParameter("num");
	//dao
	guestDao dao=new guestDao();
	//num에 해당하는 chu증가
	dao.updateChu(num);
	
	//증가된 chu값을 json형식으로 변환
	int chu=dao.getData(num).getChu();
	
	JSONObject ob=new JSONObject();
	ob.put("chu",chu);
%>
<%=ob.toString()%>
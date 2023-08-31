<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.smartanswerDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.answerDto"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="data.dto.smartanswerDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.answerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num=request.getParameter("num");
	smartanswerDao dao=new smartanswerDao();
	List<smartanswerDto> list=dao.getAllSmartAnswers(num);
	
	JSONArray arr=new JSONArray();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	for(smartanswerDto dto:list){
		JSONObject ob=new JSONObject();
		ob.put("idx",dto.getIdx());
		ob.put("num",dto.getNum());
		ob.put("nickname",dto.getNickname());
		ob.put("content",dto.getContent());
		ob.put("writeday",sdf.format(dto.getWriteday()));
		
		arr.add(ob);
		
	}
	
%>
<%=arr.toString()%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.memo.memoDto"%>
<%@page import="java.util.List"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="db.memo.memoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
memoDao dao=new memoDao();
//전체목록 가져옴
List<memoDto> list=dao.getAllMemos();

//넘긴값을 json형태로 변환
JSONArray arr=new JSONArray();

//arr에 먼저 size보내기
//JSONObject size=new JSONObject();
//size.put("size",list.size());

SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
for(memoDto dto:list){
	JSONObject ob=new JSONObject();
	ob.put("num",dto.getNum());
	ob.put("writer",dto.getWriter());
	ob.put("story",dto.getStory());
	ob.put("avata",dto.getAvata());
	ob.put("writeday",sdf.format(dto.getWriteday()));
	
	arr.add(ob);
}

%>

<%=arr.toString() %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="data.dao.smartanswerDao"/>
<jsp:useBean id="dto" class="data.dto.smartanswerDto"/>
<jsp:setProperty property="*" name="dto"/>

<%
	String idx=request.getParameter("idx");
	dao.deleteSmartAnswer(idx);
%>
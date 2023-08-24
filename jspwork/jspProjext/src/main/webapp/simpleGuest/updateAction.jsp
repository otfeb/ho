<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String num=request.getParameter("num");
	String nick=request.getParameter("nick");
	String pass=request.getParameter("pass");
	String story=request.getParameter("story");
	String image=request.getParameter("image");
	
	SimpleGuestDao dao=new SimpleGuestDao();
	
	//비밀번호가 맞으면 수정..수정 후 목록으로 이동
	if(dao.isEqualPass(num, pass))
	{
		SimpleGuestDto dto=new SimpleGuestDto();
		dto.setNum(num);
		dto.setNick(nick);
		dto.setImage(image);
		dto.setStory(story);
		
		dao.updateSimpleGuest(dto);
		
		response.sendRedirect("guestList.jsp");
	}
	else{//틀리면 자바스크립트로 경고 후 이전화면으로 이동
		%>
		<script type="text/javascript">
			alert("비밀번호가 맞지않음");
			history.back();
		</script>
	<%}
	
%>

	<%-- <jsp:useBean id="dao" class="db.simpleguest.SimpleGuestDao"></jsp:useBean>
	<jsp:useBean id="dto" class="db.simpleguest.SimpleGuestDto"></jsp:useBean>
	
	<jsp:setProperty property="*" name="dto"/> --%>
	
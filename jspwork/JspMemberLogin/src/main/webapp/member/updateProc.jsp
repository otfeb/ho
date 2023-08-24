<%@page import="member.model.MemberDto"%>
<%@page import="member.model.MemberDao"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String realPath=getServletContext().getRealPath("/upload");
	System.out.println(realPath);
	int uploadSize=1024*1024*3;
	
	MultipartRequest multi=null;
	multi=new MultipartRequest(request,realPath,uploadSize,"utf-8",new DefaultFileRenamePolicy());
	
	//dao 선언
	MemberDao dao=new MemberDao();
	//dto
	MemberDto dto=new MemberDto();
	
	dto.setNum(multi.getParameter("num"));
	dto.setPass(multi.getParameter("pass"));
	dto.setName(multi.getParameter("name"));
	dto.setHp(multi.getParameter("hp"));
	
	MemberDto dto2=dao.getDta(multi.getParameter("num"));
	
	//dto.setImage(multi.getFilesystemName("uploadImage"));
	String photo=multi.getFilesystemName("uploadImage");		//사진선택 안한경우의 선택지
	
	if(photo==null){						//db로 가서 공백인지 null값인지 확인
		dto.setImage(dto2.getImage());			//사진선택안하면 원래 사진 그대로
	}
	else{										
		dto.setImage("../upload/"+photo);		//사진선택하면 그 사진으로 수정
	}
							
	//db에 insert
	dao.updateMember(dto);
	
	//성공 후 이동
	response.sendRedirect("memberList.jsp");
%>
</body>
</html>
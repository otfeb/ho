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
<%
	//절대경로잡기
	String root=request.getContextPath();
<<<<<<< HEAD
	String loginok=(String)session.getAttribute("loginok");
	String myid=(String)session.getAttribute("myid");
=======
>>>>>>> 5749c17c491dae52e414b438e78f8152c8fda9bb
%>
<link rel="stylesheet" type="text/css" href="<%=root %>/menu/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=root %>/menu/css/menu.css">
    
	<script type="text/javascript" src="<%=root %>/menu/js/jquery.js"></script>
	<script type="text/javascript" src="<%=root %>/menu/js/function.js"></script>
<body>

<%-- <a href="<%=root%>/index.jsp">메인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/index.jsp?main=member/memberform.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/index.jsp?main=guest/guestlist.jsp">방명록</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">Q & A</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">회원게시판</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<%=root%>/">Shop</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>

<div id="wrap">
	<header>
		<div class="inner relative">
			<a class="logo" href="#"></a>
			<a id="menu-toggle" class="button dark" href="#"><i class="icon-reorder"></i></a>
			<nav id="navigation">
				<ul id="main-menu" style="height: 60px;">
					<li class="current-menu-item"><a href="<%=root%>">Home</a></li>
					<li class="parent">
						<a href="#">about 회원</a>
						<ul class="sub-menu">
<<<<<<< HEAD
							<%if(loginok==null){%>
								<li><a href="<%=root%>/index.jsp?main=login/loginmain.jsp"><i class="bi bi-box-arrow-in-right"></i> 로그인</a></li>
							<%}else{%>
								<li><a href="<%=root%>/index.jsp?main=login/logoutform.jsp"><i class="bi bi-box-arrow-in-right"></i> 로그아웃</a></li>
							<%}
							%>
							<li><a href="<%=root%>/index.jsp?main=member/memberform.jsp"><i class="bi bi-file-earmark-person"></i>  회원가입</a></li>
							<%if(loginok=="yes" && myid.equals("admin")){%>
								<li><a href="<%=root%>/index.jsp?main=member/memberlist.jsp"><i class="bi bi-person-lines-fill"></i> 회원목록</a></li>
								<li><a href="<%=root%>/index.jsp?main=member/myinfo.jsp"><i class="bi bi-person-lines-fill"></i> 나의정보</a></li>
							<%}
							else if(loginok=="yes"){%>
								<li><a href="<%=root%>/index.jsp?main=member/myinfo.jsp"><i class="bi bi-person-lines-fill"></i> 나의정보</a></li>
							<%}
							%>
							
=======
							<li><a href="<%=root%>/index.jsp?main=login/loginmain.jsp"><i class="bi bi-box-arrow-in-right"></i> 로그인</a></li>
							<li><a href="<%=root%>/index.jsp?main=member/memberform.jsp"><i class="bi bi-file-earmark-person"></i>  회원가입</a></li>
							<li><a href="<%=root%>/index.jsp?main=member/memberlist.jsp"><i class="bi bi-person-lines-fill"></i> 회원목록</a></li>
>>>>>>> 5749c17c491dae52e414b438e78f8152c8fda9bb
							
						</ul>
					</li>
					<li><a href="<%=root%>/index.jsp?main=guest/guestlist.jsp">방명록</a></li>
					<li class="parent">
						<a href="#">고객의 소리</a>
						<ul class="sub-menu">
							<li><a href="<%=root%>/index.jsp?main=board/boardlist.jsp">회원게시판</a></li>
							<li><a href="#">스마트게시판</a></li>
						</ul>
					</li>
					<li><a href="#">찾아오시는 길</a></li>
				</ul>
			</nav>
			<div class="clear"></div>
		</div>
		</header>
		</div>
</body>
</html>
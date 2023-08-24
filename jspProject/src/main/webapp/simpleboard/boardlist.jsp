<%@page import="java.text.SimpleDateFormat"%>
<%@page import="db.simpleboard.simpleboardDto"%>
<%@page import="java.util.List"%>
<%@page import="db.simpleboard.simpleboardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style>
body * {
	font-family: 'Orbit';
}

a:link, a:visited {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: underline;
	color: gray;
}
</style>
</head>
<%
simpleboardDao dao = new simpleboardDao();
/* List<simpleboardDto> list=dao.getAllBoards(); */

int totalCount=dao.getTotalCount();	//전체 개수
int totalPage;		//총 페이지 수
int startPage;		//각 블럭에서 보여질 시작페이지
int endPage;		//각 블럭에서 보여질 끝페이지
int startNum;		//db에서 가져올 글의 시작번호(mysql은 첫글이 0, oracle은 1)
int perPage = 3;	//한페이지당 보여질 글 개수
int perBlock = 5;	//한 블럭당 보여질 페이지 개수
int currentPage;	//현재페이지
int no;				//각 페이지당 출력할 시작번호

//현제페이지 읽기(단 null일경우는 1페이지로 준다)계산을 해야하므로 int로 형변환
if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	currentPage = Integer.parseInt(request.getParameter("currentPage"));

//총 페이지수 구하기
//총 글의 개수/한 페이지당 보여질 개수로 나눔	ex)7/5=2페이지
totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

//각 블럭당 보여야할 시작페이지
//perBlock=5일경우는 현제페이지 1~5 시작:1 끝:5
//현재페이지 13		시작:11  끝:15
startPage = (currentPage - 1) / perBlock * perBlock + 1;

endPage = startPage + perBlock - 1;

//총 페이지가 23일경우 마지막블럭은 25가 아니라 23이다
if (endPage > totalPage)
	endPage = totalPage;

//각 페이지에서 보여질 시작번호
//1페이지: 0,2페이지:5, 3페이지:10...
startNum=(currentPage-1)*perPage;

//각페이지당 출력할 시작번호 구하기
//ex) 총 글개수가 23이면 1페이지 23, 2페이지 18, 3페이지 13...
no=totalCount-(currentPage-1)*perPage;

//페이지에서 보여질 글만 가져오기
List<simpleboardDto> list=dao.getPagingList(startNum, perPage);
%>
<body>
	<div style="margin: 30px 30px; width: 800px;">
		<button class="btn btn-outline-info"
			onclick="location.href='addform.jsp'">
			<i class="bi bi-pencil-fill"></i>Writing
		</button>

		<br>
		<br>
		<h6>
			<b>총 <%=list.size()%>개의 게시글이 있습니다
			</b>
		</h6>
		<table class="table table-bordered">
			<caption>
				<b>간단 게시판 목록</b>
			</caption>
			<tr>
				<th width="60">번호</th>
				<th width="360">제목</th>
				<th width="100">작성자</th>
				<th width="120">작성일</th>
				<th width="60">조회</th>
			</tr>

			<%
			if (list.size() == 0) {
			%>
			<tr>
				<td colspan="5" align="center">
					<h6>
						<b>등록된 게시글이 없습니다</b>
					</h6>
				</td>
			</tr>
			<%
			} else {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			for (int i = 0; i < list.size(); i++) {
				simpleboardDto dto = list.get(i);
			%>
			<tr>
				<td align="center"><%=no--%></td>
				<td><a href="detailview.jsp?num=<%=dto.getNum()%>"><%=dto.getSubject()%></a></td>
				<td><%=dto.getWriter()%></td>
				<td><%=sdf.format(dto.getWriteday())%></td>
				<td align="center"><%=dto.getReadcount()%></td>
			</tr>
			<%
			}
			}
			%>
		</table>
		
		<!-- 페이지번호 출력 -->
		<div>
			<ul class="pagination justify-content-center">
			<%
			//이전
			if(startPage>1){%>
				<li class="page-item"><a class="page-link" href="boardlist.jsp?currentPage=<%=startPage-perBlock%>"><<</a></li>
			<%}
			else{%>
				<li class="page-item"><a class="page-link" href="#"><<</a></li>
			<%}
			%>
			<%if(currentPage>1){ %>
			<li class="page-item"><a class="page-link" href="boardlist.jsp?currentPage=<%=currentPage-1%>"><</a></li>
			<%}
			else{%>
				<li class="page-item"><a class="page-link" href="#"><</a></li>
			<%}
			%>
			
			<%for(int pp=startPage;pp<=endPage;pp++){		//css걸기위한 조건
				if(pp==currentPage){%>
					<li class="page-item active">
						<a class="page-link" href="boardlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
					</li>
				<%}
				else{%>
					<li>
						<a class="page-link" href="boardlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
					</li>
				<%}
			}
			%>
			<%if(currentPage<totalPage){ %>
			<li class="page-item"><a class="page-link" href="boardlist.jsp?currentPage=<%=currentPage+1%>">></a></li>
			<%}
			else{%>
				<li class="page-item"><a class="page-link" href="#">></a></li>
			<%}
			%>
			
			<%if((startPage+perBlock)<totalPage){ %>
			<li class="page-item"><a class="page-link" href="boardlist.jsp?currentPage=<%=startPage+perBlock%>">>></a></li>
			<%}
			else{%>
				<li class="page-item"><a class="page-link" href="#">>></a></li>
			<%}
			%>
			
			
			</ul>
		</div>
		
	</div>
</body>
</html>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.model.MemberDto"%>
<%@page import="member.model.MemberDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function funcdel(num){
		//alert(num);
		//$("#btnmdel").attr("num",num);
		$("#myModal").modal();
		
		$("#btnmdel").click(function(){
			location.href="deleteMember.jsp?num="+num;
		});
	}
</script>
<body>
<%
	MemberDao dao=new MemberDao();
	ArrayList<MemberDto> list=dao.selectMember();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	
%>
<%
	String loginok2=(String)session.getAttribute("loginok");

	if(loginok2!=null){%>
		<button type="button" class="btn btn-outline-success" onclick="location.href='loginForm.jsp'">로그아웃</button>
	<%}
	else{%>
		<button type="button" class="btn btn-outline-info" onclick="location.href='loginForm.jsp'">로그인</button>
	<%}
%>


<table class="table table-bordered" style="width: 750px">
	<tr align="center" bgcolor="#f0f8ff">
		<th width="60">번호</th>
		<th width="120">아이디</th>
		<th width="200">회원명</th>
		<th width="250">핸드폰</th>
		<th width="220">가입일</th>
		<th width="170">편집</th>
	</tr>

	 <% for(int i=0;i<list.size();i++){
	 		MemberDto dto=list.get(i);
	 %> 
	<tr align="center" valign="middle">
		<td><b>No.<%=(i+1) %></b></td>
		<td><b><%=dto.getId() %></b></td>
		<td>
			<img src="<%=dto.getImage()%>" width="70"><br>
			<b><%=dto.getName() %></b>
		</td>
		<td><b><%=dto.getHp() %></b></td>
		<td><b><%=sdf.format(dto.getGaip()) %></b></td>
		<td align="center" colspan="2" float="left">
		
		<%
			//로그인한 본인것만 수정/삭제 보이도록...
			String loginok=(String)session.getAttribute("loginok");
			String id=(String)session.getAttribute("idok");
			
			//로그인한 본인것만 나오도록
			if(loginok!=null && dto.getId().equals(id)){%>
				<input type="button" class="btn btn-success btn-sm" value="수정" onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">
				<input type="button" class="btn btn-danger btn-sm" value="삭제" onclick="funcdel(<%=dto.getNum()%>)">
			<%}
			else{%>
				<h5>권한없음</h5>
			<%}
		%>
			
		</td>
	</tr>
	<%}
	%>
</table>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원탈퇴</h4>
        </div>
        <div class="modal-body">
          <p>회원탈퇴를 원하시면 [탈퇴확인]을 눌러주세요</p>
          <button type="button" class="btn btn-danger" id="btnmdel" num="">탈퇴확인</button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
</body>
</html>
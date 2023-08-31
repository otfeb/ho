<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.smartDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
	span.day{
		color: gray;
		font-size: 0.8em;
	}
	span.aday{
		color: gray;
		font-size: 0.8em;
		float: right;
	}
	img{
		max-width: 200px;
	}
	i.adel{
		margin-left: 10px;
		cursor: pointer;
	}
	
</style>

<script type="text/javascript">
	$(function(){
		//시작할때 
		list();
		
		//댓글부분 ajax insert
		//num alert테스트
		var num=$("#num").val();
		//alert(num);
		
		$("#btnadd").click(function(){
			var nickname=$("#nickname").val().trim();
			var content=$("#content").val().trim();
			
			if(nickname.trim().length==0){
				swal ( "Nope!!" ,  "닉네임을 꼭 써주세요!" ,  "error" );
				return;
			}
			if(content.trim().length==0){
				swal ( "잠깐!!" ,  "내용을 빠뜨리셨네요~!" ,  "success" );
				return;
			}
			
			$.ajax({
				type: "get",
				url: "board/insertanswer.jsp",
				dataType: "html",
				data:{"num":num,"nickname":nickname,"content":content},
				success:function(data){
					//기존입력값 지우기
					$("#nickname").val("");
					$("#content").val("");
					//리스트
					list();
				}
			});
		});
		$(document).on("click","i.adel",function(){
			var idx=$(this).attr("idx");
			//alert(idx);
			var y=confirm("정말삭제?");
			
			if(y){
				$.ajax({
					type:"get",
					url:"board/deleteanswer.jsp",
					dataType:"html",
					data:{"idx":idx},
					success:function(data){
						list();
					}
				});
			}else{
				alert("취소하였");
			}
		});
		
	});
	
	function list(){
		console.log("list num="+$("#num").val());
		
		$.ajax({
			type:"get",
			url:"board/listanswer.jsp",
			dataType:"json",
			data:{"num":$("#num").val()},
			success:function(res){
				//댓글개수출력
				$("b.acount>span").text(res.length);
				
				//출력
				var s="";
				$.each(res,function(idx,item){
					s+="<div>"+item.nickname+":"+item.content;
					s+="<span class='aday'>"+item.writeday+"</span>";
					s+="<i idx="+item.idx+" class='bi bi-trash3-fill adel'></i>";
					s+="</div>";
				});
				
				$("div.alist").html(s);
			}
		});
	}
</script>
</head>
<jsp:useBean id="dao" class="data.dao.smartDao"/>
<body>
<%
	String num=request.getParameter("num");
	//현재페이지 받기
	String currentPage=request.getParameter("currentPage");
	
	dao.updateReadCount(num);
	
	smartDto dto=dao.getData(num);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<div style="margin: 30px 30px; width: 500px;">
	<input type="hidden" id="num" value="<%=num%>">
	<table class="table table-bordered">
		<caption align="top">
			<b><h2><%=dto.getSubject() %></h2></b>
		</caption>
		<tr>
			<td>
				<b>작성자: <%=dto.getWriter() %></b><br>
				<span class="day"><%=sdf.format(dto.getWriteday()) %>
				&nbsp;&nbsp; 조회: <%=dto.getReadcount() %></span>
			</td>
		</tr>
		<tr height="150">
			<td><%=dto.getContent() %></td>
		</tr>
		
		<!-- 댓글 -->
		<tr>
			<td>
				<b class="acount" id="alist">댓글<span>0</span></b>
				<div class="alist">
					댓글목록
				</div>
				<div class="aform input-group">
					<input type="text" id="nickname" class="form-control" style="width: 130px;" placeholder="닉네임입력">
					<input type="text" id="content" class="form-control" style="width: 300pxl" placeholder="댓글메세지">
					<button type="button" id="btnadd" class="btn btn-outline-info">저장</button>
				</div>
			</td>
		</tr>
		
		<tr>
			<td align="right">
				<button type="button" class="btn btn-outline-success" 
				onclick="location.href='index.jsp?main=board/smartform.jsp'">글쓰기</button>
				<button type="button" class="btn btn-outline-success" 
				onclick="location.href='index.jsp?main=board/boardlist.jsp?currentPage=<%=currentPage%>'">목록</button>
				<button type="button" class="btn btn-outline-success" 
				onclick="location.href='index.jsp?main=board/updateform.jsp?num=<%=num%>&currentPage=<%=currentPage%>'">수정</button>
				<button type="button" class="btn btn-outline-success" onclick="funcdel(<%=num%>,<%=currentPage%>)">삭제</button>
			</td>
		</tr>
	</table>
</div>

<script type="text/javascript">
	function funcdel(num,currentPage){
		//alert(num+","+currentPage);
		
		var a=confirm("삭제하려면 [확인]을 눌러주세요");
		
		if(a){
			location.href="board/deleteaction.jsp?num="+num+"&currentPage="+currentPage;
		}
	}
</script>
</body>
</html>
<%@page import="data.dto.answerDto"%>
<%@page import="data.dao.answerDao"%>
<%@page import="data.dao.memberDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.guestDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.guestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Dongle&family=Gugi&family=Orbit&display=swap"
        rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>

<script type="text/javascript">
	$(function(){
		
		$(".delme").click(function(){
			var num=$(this).attr("num");
			var currentPage=$(this).attr("currentPage");
			
			var yes=confirm("정말 삭제하시겠어요?");
			
			if(yes){
				location.href="guest/delete.jsp?num="+num+"&currentPage="+currentPage;
			}
		});
		
		$("span.likes").click(function(){
			var num=$(this).attr("num");
			var tag=$(this);
			//alert(num);
			
			$.ajax({
				type:"get",
				dataType:"json",
				url:"guest/ajaxlikes.jsp",
				data:{"num":num},
				success:function(data){
					//alert(data.chu);
					tag.next().text(data.chu);
					
					//추천클릭시 하트 커지고 끝나면 다시 0px;
					tag.next().next().animate({"font-size":"15px"},1000,function(){
						$(this).css("font-size","0px");
					});
				}
				
			});
		});
		
		//댓글부분은 안보이게 처리(클릭하면 보이게)
		$("div.answer").hide();
		
		//댓글클릭시 댓글이 보였다 안보였다
		$("span.answer").click(function(){
			$(this).prev().toggle('slow');
		});
		
		//댓글삭제 이벤트
		$("i.adel").click(function(){
			var a=confirm("삭제하려면 [확인]을 눌러주세요");
			
			if(a){
			var idx=$(this).attr("idx");
			//alert(idx);
			
			$.ajax({
				type: "get",
				dataType: "html",
				url: "guest/answerdelete.jsp",
				data: {"idx":idx},
				success:function(data){
					location.reload();	//새로고침
				}
			});
			}
		});

		//수정아이콘 눌렀을때 원래값 받아오기
		$(".aup").click(function(){
			var idx=$(this).attr("idx");
			var content=$(this).prev().prev().text();
			$(".tta").text(content);					//()안에 값이 있으면 set 없으면 get
			$("#put").val(idx);
			
		});
		
		//최종수정 눌렀을때 내용 수정
		$("button.fup").click(function(){
			var idx=$(this).prev().val();
			var content=$(this).parent().prev().children().val();
			
			
			 $.ajax({
				type: "get",
				url: "guest/answerupdate.jsp",
				dataType: "html",
				data: {"idx":idx,"content":content},
				success:function(data){
					location.reload();
				}
			});
		});
	});

</script>
</head>
<%
	//로그인 상태 확인 후 입력폼 나타낼 것_회원만 보이게
	String loginok=(String)session.getAttribute("loginok");

guestDao dao = new guestDao();

int totalCount=dao.getTotalCount();	//전체 개수
int totalPage;		//총 페이지 수
int startPage;		//각 블럭에서 보여질 시작페이지
int endPage;		//각 블럭에서 보여질 끝페이지
int startNum;		//db에서 가져올 글의 시작번호(mysql은 첫글이 0, oracle은 1)
int perPage = 3;	//한페이지당 보여질 글 개수
int perBlock = 5;	//한 블럭당 보여질 페이지 개수
int currentPage;	//현재페이지

//현제페이지 읽기(단 null일경우는 1페이지로 준다)계산을 해야하므로 int로 형변환
if (request.getParameter("currentPage") == null)
	currentPage = 1;
else
	//getParameter의 반환값이 String이라 int로 형변환
	currentPage = Integer.parseInt(request.getParameter("currentPage"));

//총 페이지수 구하기
//총 글의 개수/한 페이지당 보여질 개수로 나눔	ex)7/5=2페이지
totalPage = totalCount / perPage + (totalCount % perPage == 0 ? 0 : 1);

//각 블럭당 보여야할 시작페이지
//perBlock=5일경우는 현제페이지 1~5 시작:1 끝:5
//현재페이지 13		시작:11  끝:15
startPage = (currentPage - 1) / perBlock * perBlock + 1;

//한 블럭당 보이는 마지막페이지
//ex) 현제페이지 6페이지, perblock 5일경우 - endPage:10
endPage = startPage + perBlock - 1;

//총 페이지가 23일경우 마지막블럭은 25가 아니라 23이다
if (endPage > totalPage)
	endPage = totalPage;

//각 페이지에서 보여질 시작번호
//1페이지: 0,2페이지:5, 3페이지:10...0부터 시작 perPage 5일경우
startNum=(currentPage-1)*perPage;

//각페이지당 출력할 시작번호 구하기
//ex) 총 글개수가 23이면 1페이지 23, 2페이지 18, 3페이지 13...

//페이지에서 보여질 글만 가져오기
List<guestDto> list=dao.getList(startNum, perPage);

SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

//마지막 페이지 남은 글 지우면 빈페이지만 남는다 -> 해결: 이번페이지로 이동
if(list.size()==0 && currentPage!=1){%>
	<script type="text/javascript">
		location.href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=currentPage-1%>";
	</script>
<%}
%>
<body>

<%
	if(loginok!=null){%>
		<jsp:include page="addform.jsp"/>
		<hr align="left" width="700">
	<%}
%>
<div>
	<b>총 <%=totalCount %>개의 방명록 글이 있습니다</b>
	
	<%
		memberDao mdao=new memberDao();
		
		for(guestDto dto:list){
			//이름얻기
			String name=mdao.getName(dto.getMyid());
			%>
			<table class="table" style="width: 600px;">
				<tr>
					<td>
						<b><i class="bi bi-person-circle"></i><%=name %>(<%=dto.getMyid() %>)</b>
						
						<%
						//로그인한 아이디
						String myid=(String)session.getAttribute("myid");
						
						//로그인한 아이디와 글쓴아이디가 같을경우만 수정,삭제
						if(loginok!=null && dto.getMyid().equals(myid)){%>
							|<a href="index.jsp?main=guest/updateform.jsp?num=<%=dto.getNum() %>&currentPage=<%=currentPage %>" style="color: green;">수정</a>
							|<a class="delme" href="#" num="<%=dto.getNum() %>" currentPage="<%=currentPage %>" style="color: red;">삭제</a>
						<%}
						%>
						<span class="day" style="font-size: 15px; float: right;"><%=sdf.format(dto.getWriteday()) %></span>
					</td>
				</tr>
				
				<tr height="120">
					<td>
					<!-- 이미지가 null이 아닌경우만 출력 -->
					<%
					if(dto.getPhotoname()!=null){%>
						<a href="save/<%=dto.getPhotoname()%>" target="_blank">
						<img src="save/<%=dto.getPhotoname()%>" align="left" style="width: 100px;" hspace="20">
						</a>
					<%}
					%>
					
					<%=dto.getContent().replace("\n", "<br>") %>
					</td>
				</tr>
				
				<!-- 댓글,추천 -->
				<!-- 추천수 클릭시 추천숫자 옆에 하트 커졌다 사라지게 animate -->
				<tr>
					<td>
					
					<%
					//각 방명록에 달린 댓글 목록 가져오기
					answerDao adao=new answerDao();
					List<answerDto> alist=adao.getAllAnswers(dto.getNum());
					%>
					
					<div class="answer">
						<%
						if(loginok!=null){
							%>
							<div class="answerform">
								<form action="guest/answerinsert.jsp" method="post">
									<table class="table table-bordered" style="width: 500px;">
										<tr>
											<td>
												<textarea style="width: 500px; height: 80px;" name="content" required="required" class="form-control"></textarea>
											</td>
											<td>
												<button type="submit" class="btn btn-info" style="width: 80px; height: 80px;">등록</button>
												<!-- hidden값 3개 -->
												<input type="hidden" name="num" value="<%=dto.getNum()%>">
												<input type="hidden" name="myid" value="<%=myid%>">
												<input type="hidden" name="currentPage" value="<%=currentPage%>">
											</td>
										</tr>
									</table>
								</form>
							</div>
						<%}
						%>
						
						<div class="answerlist">
							<table class="table" style="width: 480px;">
								<%
								for(answerDto adto:alist){%>
									<tr>
										<td>
											<i class="bi bi-person-circle" style="font-size: 25px;"></i>
											<b><%=mdao.getName(adto.getMyid()) %></b>&nbsp;
											<%
											//글쓴이와 댓글쓴이가 같을경우[작성자]
											if(dto.getMyid().equals(adto.getMyid())){%>
												<span style="color: orange; border: 1px solid orange; border-radius: 20px;">작성자</span>
											<%}
											%>
											<span style="font-size: 9pt; color: gray; margin-left: 20px; float: right;"><%=sdf.format(adto.getWriteday()) %></span>
											<br>
											<span class="contents"><%=adto.getContent().replace("\n", "<br>") %></span>
											<%
												//수정,삭제는 로그인중이면서 로그인한 아이디와 같은경우만 보이게
												if(loginok!=null && adto.getMyid().equals(myid)){%>
													<i class="bi bi-trash3-fill adel" style="cursor: pointer; float: right; font-size: 22px;" idx="<%=adto.getIdx()%>"></i>&nbsp;
													<i class="bi bi-pencil-square aup" style="cursor: pointer; float: right; font-size: 22px;"
													data-bs-toggle="modal" data-bs-target="#myModal" idx="<%=adto.getIdx()%>"></i>
													
												<%}
											%>
										</td>
									</tr>
								<%}
								%>
							</table>
							
						</div>
					</div>
					<span class="answer" style="cursor: pointer;" num=<%=dto.getNum() %>>댓글<%=alist.size() %></span>
					<span class="likes" style="margin-left: 20px; cursor: pointer;" num=<%=dto.getNum() %>>추천</span>
					<span class="chu"><%=dto.getChu() %></span>
					<i class="bi bi-heart-fill" style="font-size: 0px; color: red;"></i>
					</td>
				</tr>
			</table>
		<%}
	%>
</div>
<!-- 페이지번호 출력 -->
   <div>
      <ul class="pagination justify-content-center">

         <%
         //이전
         if (startPage > 1) {
         %>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=startPage - perBlock%>"><<</a></li>
         <%} else{%>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=startPage%>"><<</a></li>
         
         <%} %>
         
         <%if (currentPage > 1){%>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=currentPage - 1%>"><</a></li>

         <%} else{%>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=startPage%>"><</a></li>
         
         <%} %>
         
         
         
         
         
         <%for (int pp = startPage; pp <= endPage; pp++) {
         if (pp == currentPage) {
         %>
         <li class="page-item active"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
         <%
         } else {
         %>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=pp%>"><%=pp%></a></li>
         <%
         }
         }
         %>
         
         
         
         <!-- 다음버튼 -->
         <%if (currentPage < totalPage){%>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=currentPage + 1%>">></a></li>

         <%} else{%>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=endPage%>">></a></li>
         
         <%} %>

         <%
         if (totalPage > (endPage+1)) {
         %>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=endPage+1%>">>></a></li>
         <%} else{%>
         <li class="page-item"><a class="page-link"
            href="index.jsp?main=guest/guestlist.jsp?currentPage=<%=endPage%>">>></a></li>
         
         <%} %>
      </ul>
   </div>
	   						<!-- The Modal -->
							
								<div class="modal" id="myModal">
								  <div class="modal-dialog">
								    <div class="modal-content">
								
								      <!-- Modal Header -->
								      <div class="modal-header">
								        <h4 class="modal-title">댓글수정</h4>
								        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
								      </div>
								
								      <!-- Modal body -->
								      <div class="modal-body">
								        <textarea style="width: 465px; height: 80px;" name="content" required="required" class="form-control tta">
								        	
								        </textarea>
								      </div>
								
									      <!-- Modal footer -->
									      <div class="modal-footer">
									      	<input type="hidden" id="put">
									        <button type="button" class="btn btn-success fup" data-bs-dismiss="modal">수정</button>
									        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
									      </div>
									    </div>
									  </div>
									</div>
								

</body>
</html>
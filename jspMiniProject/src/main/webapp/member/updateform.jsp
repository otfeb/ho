<%@page import="java.util.StringTokenizer"%>
<%@page import="data.dto.memberDto"%>
<%@page import="data.dao.memberDao"%>
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
	//num
	String num=request.getParameter("num");
	//dao
	memberDao dao=new memberDao();
	//dto얻기
	memberDto dto=dao.getMember(num);
	
	//이메일 구분하기(@기준으로)_#1
	/* int idx=dto.getEmail().indexOf('@');
	String email1=dto.getEmail().substring(0, idx);		//0~(idx-1)
	String email2=dto.getEmail().substring(idx+1);		//idx+1부터 끝까지 */
	
	//@을 구분자로 분리_#2
	StringTokenizer st=new StringTokenizer(dto.getEmail(),"@");
	String email1=st.nextToken();
	String email2=st.nextToken();
%>
<script type="text/javascript">
	$(function(){
		
		//선택 이메일 주소 넣기
		$("#selemail").change(function(){
			if($(this).val()=='-'){
				$("#email2").val("");
				$("#email2").focus();
			}
			else{
			$("#email2").val($(this).val());
		}
		});
	});
	
	function check(f){
		if(f.pass.value!=<%=dto.getPass()%>){
			alert("비밀번호가 틀렸습니다");
			f.pass.value="";
			
			return false;	//action이 호출되지 않는다
		}
	}
</script>
<body>
	<form action="member/updateproc.jsp" method="post" onsubmit="return check(this)">
		<input type="hidden" name="num" value="<%=num%>">
		<table class="table table-bordered" style="width: 570px;">
			<caption align="top"><b>회원정보수정</b></caption>
			<tr>
				<th style="width: 100px; background-color: #aaa;">아이디</th>
				<td>
					<input type="text" name="id" id="id" style="width: 120px;" readonly="readonly" value="<%=dto.getId()%>">
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">비밀번호</th>
				<td>
					<input type="password" name="pass" class="form-group" required="required" placeholder="비밀번호" style="width: 120px;">
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">회원명</th>
				<td>
					<input type="text" name="name" class="form-group" required="required" style="width: 120px;" value=<%=dto.getName() %>>
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">핸드폰</th>
				<td>
					<input type="text" name="hp" class="form-group" required="required" style="width: 200px;" value=<%=dto.getHp() %>>
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">주소</th>
				<td>
					<input type="text" name="addr" class="form-group" required="required" style="width: 350px;" value=<%=dto.getAddr() %>>
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">이메일</th>
				<td>
					<input type="text" name="email1" id="email1" class="form-group" required="required" style="width: 150px;" value=<%=email1 %>>
					<b>@</b>
					<input type="text" name="email2" id="email2" class="form-group" required="required" style="width: 150px;" value=<%=email2 %>>
					<select id="selemail">
						<option value="-">직접입력</option>
						<option value="naver.com">네이버</option>
						<option value="google.com">구글</option>
						<option value="daum.com">다음</option>
						<option value="nate.com">네이트</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-outline-info" style="width: 150px;">회원정보수정</button>
					<button type="reset" class="btn btn-outline-info" style="width: 100px;">초기화</button>
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
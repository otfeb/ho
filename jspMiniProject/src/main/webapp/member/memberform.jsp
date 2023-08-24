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
<script type="text/javascript">
	$(function(){
		//id중복체크
		$("#btncheck").click(function(){
			//id읽기
			var id=$("#id").val();
			//alert(id);
			
			$.ajax({
				type:"get",
				url:"member/idsearch.jsp",
				dataType:"json",
				data:{"id":id},
				success:function(data){
					//alert(data.count);
					if(data.count==1){
						//alert("이미 가입된 아이디 입니다")
						$("span.idsuccess").text("이미 사용중");
						$("#id").val("");
						$("#id").focus();
					}
					else{
						//alert("가입가능한 아이디 입니다")
						$("span.idsuccess").text("사용가능");
					}
				}
			});
		});
		
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
		if(f.pass.value!=f.pass2.value){
			alert("비밀번호가 서로 다릅니다");
			f.pass.value="";
			f.pass2.value="";
			
			return false;	//action이 호출되지 않는다
		}
	}
</script>
</head>
<body>
	<form action="member/memberproc.jsp" method="post" onsubmit="return check(this)">
		<table class="table table-bordered" style="width: 570px;">
			<caption align="top"><b>회원가입</b></caption>
			<tr>
				<th style="width: 100px; background-color: #aaa;">아이디</th>
				<td>
					<input type="text" name="id" id="id" class="form-group" required="required" style="width: 120px;">
					<button class="btn btn-danger btn-sm" id="btncheck">중복체크</button>
					<!-- 옆에 가입가능여부를 바로 표시 -->
					<span class="idsuccess"></span>
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">비밀번호</th>
				<td>
					<input type="password" name="pass" class="form-group" required="required" placeholder="비밀번호" style="width: 120px;">
					<input type="password" name="pass2" class="form-group" required="required" placeholder="비밀번호 확인" style="width: 120px;">
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">회원명</th>
				<td>
					<input type="text" name="name" class="form-group" required="required" style="width: 120px;">
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">핸드폰</th>
				<td>
					<input type="text" name="hp" class="form-group" required="required" style="width: 200px;">
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">주소</th>
				<td>
					<input type="text" name="addr" class="form-group" required="required" style="width: 350px;">
				</td>
			</tr>
			
			<tr>
				<th style="width: 100px; background-color: #aaa;">이메일</th>
				<td>
					<input type="text" name="email1" id="email1" class="form-group" required="required" style="width: 150px;">
					<b>@</b>
					<input type="text" name="email2" id="email2" value="" class="form-group" required="required" style="width: 150px;">
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
					<button type="submit" class="btn btn-outline-info" style="width: 100px;">회원가입</button>
					<button type="reset" class="btn btn-outline-info" style="width: 100px;">초기화</button>
					
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
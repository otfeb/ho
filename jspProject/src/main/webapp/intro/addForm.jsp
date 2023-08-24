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
<form action="addAction.jsp" method="post">
	<table class="table table-bordered" style="width: 350px">
		<tr>
			<th>이름</th>
				<td>
					<input type="text" class="form-control" style="width:180px;" name="name">
				</td>
		</tr>
		
		<tr>
			<th>지역</th>
				<td>
					<input type="radio" name="city" value="서울">서울
					<input type="radio" name="city" value="부산">부산
					<input type="radio" name="city" value="경기">경기
					<input type="radio" name="city" value="인천">인천
					<input type="radio" name="city" value="제주">제주
				</td>
		</tr>
		
		<tr>
			<th>전화번호</th>
				<td>
					<select name="hp1">
						<%-- 국번 선택 --%>
						<option value="010">010</option>
						<option value="010">02</option>
						<option value="010">031</option>
						<option value="010">032</option>
					</select>
					<%-- 나머지 번호 8자리(4자리 입력하면 자동으로 다음 4자리로 이동 --%>
					-<input type="text" maxlength="4" size="4" name="hp2" id="hpcenter">-
					<input type="text" maxlength="4" size="4" name="hp3" id="hplast">	<!-- maxlength : 글자수제한 -->
				</td>
		</tr>
		
		<tr>
			<th>혈액형</th>
				<td>
					<select name="blood">
						<%-- 국번 선택 --%>
						<option value="O형">O형</option>
						<option value="A형">A형</option>
						<option value="B형">B형</option>
						<option value="AB형">AB형</option>
					</select>
				</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<button type="submit" class="btn btn-info">추가</button>
				<button type="button" class="btn btn-success" onclick="location.href='list.jsp'">목록</button>
			</td>
		</tr>
	</table>
</form>

<script type="text/javascript">
	$("#hpcenter").on("keyup",function(){
		var length=$(this).val().length;
		if(length==4){
			$("#hplast").focus();
		}
	});
</script>
</body>
</html>
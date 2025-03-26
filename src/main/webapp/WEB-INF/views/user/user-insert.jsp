<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="/users">
<table border="1">
<tr>
	<th>이름</th>
	<td><input type="text" name="uiName" id="uiName"></td>
</tr>
<tr>
	<th>아이디</th>
	<td><input type="text" name="uiId" id="uiId"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="uiPwd" id="uiPwd"></td>
</tr>
<tr>
	<th>유저등급</th>
	<td>
		<select name="uiGrade" id="uiGrade">
			<option value="">선택</option>
			<option value="1">일반</option>
			<option value="2">관리자</option>
		</select>
	</td>
</tr>
<tr>
	<th colspan="2">
	<button>등록</button>
	</th>
</tr>
</table>
</form>
</body>
</html>
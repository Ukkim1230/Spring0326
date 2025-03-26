<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="/users/delete/${user.uiNum}">
<table border="1">
<tr>
	<th>번호</th>
	<td>${user.uiNum}</td>
</tr>
<tr>
	<th>이름</th>
	<td>${user.uiName}</td>
</tr>
<tr>
	<th>아이디</th>
	<td>${user.uiId}</td>
</tr>
<tr>
	<th>유저등급</th>
	<td>${user.uiGrade}</td>
</tr>
<tr>
	<th>가입일</th>
	<td>${user.credat}</td>
</tr>
<tr>
	<th colspan="2">
		<button type="button" onclick="location.href='/users/update/${user.uiNum}'">수정</button>
		<button type="submit">삭제</button>
	</th>
</tr>
</table>
</form>
</body>
</html>
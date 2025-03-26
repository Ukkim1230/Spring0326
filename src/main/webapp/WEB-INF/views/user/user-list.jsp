<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>유저 리스트</h3>
<table border="1">
	<tr>
		<th>번호</th>
		<th>이름</th>
		<th>아이디</th>
		<th>가입일</th>
	</tr>
	<c:if test= "${empty users}">
	<tr>
		<th colspan="4">유저목록이 없습니다.</th>
	</tr>
	</c:if>
	<c:forEach items="${users}" var="user">
	<tr>
		<td>${user.uiNum}</td>
		<td><a href="/users/${user.uiNum}">${user.uiName}</a></td>
		<td>${user.uiId}</td>
		<td>${user.credat}</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="4" style="text-align:right">
			<a href="/views/user/user-insert">유저등록</a>
		</td>
	</tr>
</table>
</body>
</html>
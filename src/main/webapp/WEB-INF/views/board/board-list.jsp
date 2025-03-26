<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 전용 게시판</h3>
<table border="1">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>작성일</th>
</tr>
<c:if test="${empty boards}">
<tr>
	<th colspan="4">게시글이 없습니다.</th>
</tr>
</c:if>
<c:forEach items="${boards}" var="board">
<tr>
	<td>${board.biNum}</td>
	<td><a href="/boards/${board.biNum}">${board.biTitle}</a></td>
	<td>${board.uiName}</td>
	<td>${board.credat}</td>
</tr>
</c:forEach>
<tr>
	<td colspan="4" style="text-align:right">
		<a href="/views/board/board-insert">글쓰기</a>
		</td>
</tr>
</table>
</body>
</html>
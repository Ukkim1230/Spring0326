<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="/boards/update">
<input type="hidden" name="biNum" value="${board.biNum}">
<table border="1">
	<tr>
		<th>제목</th>
		<td><input type="text" name="biTitle" id="biTitle" value="${board.biTitle}"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>${user.uiName}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea name="biContent" id="biContent" style="resize:none;width:100%;height:200px">${board.biContent}</textarea></td>
	</tr>
	<tr>
		<th colspan="2">
		<button>수정</button>
		<button type="button" onclick="location.href='/board/board-view?biNum=${board.biNum}'">돌아가기</button>
		</th>
	</tr>
</table>
</form>
</body>
</html>
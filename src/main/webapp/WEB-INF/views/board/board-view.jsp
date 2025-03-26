<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" action="/boards/delete/${board.biNum}">
<table border="1">
<tr>
				<th>제목</th>
				<td>${board.biNum}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${board.uiName}</td>
			</tr>
			<tr>
				<th>내용</th>
				<td> 
					<pre>${board.biContent}</pre>
				</td>
			</tr>
<tr>
	<th colspan="2">
		<button type="button" onclick="location.href='/boards/update/${board.biNum}'">수정</button>
		<button>삭제</button>
	</th>
</tr>
</table>
</form>
</body>
</html>
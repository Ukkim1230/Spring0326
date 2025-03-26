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
<form method="POST" action="/boards/insert">
<table border="1">
<tr>
				<th>제목</th>
				<td><input type="text" name="biTitle" id="biTitle"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td> 
					<textarea name="biContent" id="biContent" style="resize:none;width:100%;height:200px"></textarea>
				</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="uiNum" value="${user.uiNum}"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button>등록</button>
					<button>돌아가기</button>
				</th>
			</tr>
</table>
</form>
</body>
</html>
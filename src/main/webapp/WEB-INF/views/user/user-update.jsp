<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="/users/update">
		<input type="hidden" name="uiNum" value="${user.uiNum}">
		<table border="1">
			<tr>
				<th>이름</th>
				<td><input type="text" name="uiName" id="uiName"
					value="${user.uiName}"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="uiId" id="uiId"
					value="${user.uiId}"></td>
			</tr>
			<tr>
				<th>유저등급</th>
				<td><select name="uiGrade" id="uiGrade">
						<option value="">선택</option>
						<option value="1" ${user.uiGrade=="1"?"selected":""}>일반</option>
						<option value="2" ${user.uiGrade=="2"?"selected":""}>관리자</option>
				</select></td>
			</tr>
			<tr>
				<th colspan="2">
					<button>수정</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>
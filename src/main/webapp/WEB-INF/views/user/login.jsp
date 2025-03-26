<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="/users/login"
		onsubmit="return validation()">
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="uiId" id="uiId"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="uiPwd" id="uiPwd"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button>로그인</button>
				</th>
			</tr>
		</table>
	</form>
	<script>
		function validation() {
			const uiId = document.querySelector('#uiId');
			if (uiId.value.trim().length<4) {
				alert('아이디는 4글자 이상입니다.');
				uiId.value = '';
				uiId.focus();
				return false;
			}
			const uiPwd = document.querySelector('#uiPwd');
			if (uiPwd.value.trim().length<4) {
				alert('비밀번호는 4글자 이상입니다.');
				uiPwd.value = '';
				uiPwd.focus();
				return false;
			}
			return true;
		}
	</script>
</body>
</html>
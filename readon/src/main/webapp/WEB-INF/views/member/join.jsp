<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insert" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id">[ID 중복 검사]</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="copw"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
			남성<input type="radio" name="gender" value="남성">
			여성<input type="radio" name="gender" value="여성">	
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><input type="date" name="birth"></td>
	</tr>
	<tr>
		<td>휴대전화</td>
		<td><input type="text" name="phone"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</td>
	</tr>
</table>
</form>
</body>
</html>
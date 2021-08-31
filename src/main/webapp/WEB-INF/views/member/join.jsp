<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Javascript 선언 -->
<script src= https://code.jquery.com/jquery-3.6.0.min.js></script>
<script type="text/javascript" src="../resources/js/member.js"></script>
 <link rel="stylesheet" href="../resources/css/join.css">
</head>
<body>
<form action="insert" method="post">
<table>
	<tr>
		<td>아이디</td>
		<td>
			<input type="text" name="id" id="id" class="input_box" autofocus placeholder="영문자+숫자 조합 4~12자리"><br>
			<label id="idcheck" class="check"></label>
		</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="password" id="pw" class="input_box" placeholder="영문자+숫자+특수문자 조합 8~20자리"><br>
			<label id="pwcheck" class="check"></label>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td>
			<input type="password" name="copw" id="copw" class="input_box"><br>
			<label id="copwcheck" class="check"></label>
		</td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" class="input_box"></td>
	</tr>
	<tr>
		<td>성별</td>
		<td>
			남성 <input type="radio" name="gender" value="남성">
			여성 <input type="radio" name="gender" value="여성">	
		</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><input type="date" name="birth" class="input_box"></td>
	</tr>
	<tr>
		<td>휴대전화</td>
		<td><input type="text" name="phone" class="input_box" placeholder="' - ' 없이 입력하세요. ex)01011112222"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="email" name="email" class="input_box"></td>
	</tr>
	<tr>
		<td colspan="2" class="join_btns">
			<input type="submit" value="회원가입" class="join_btn">
			<input type="reset" value="취소" class="join_btn">
		</td>
	</tr>
</table>
</form>
</body>
</html>
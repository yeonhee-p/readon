<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../resources/js/register.js"></script>
<link rel="stylesheet" href="../resources/css/board_detail.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="register">
		<h1>글쓰기</h1>
		<form role="form" action="register" method="post">
			<c:if test="${msg == null}">
			<table>
				<tr>
					<td class="title">제목</td>
					<td><input type="text" name="title" class="inputBox"></td>
				</tr>
				<tr>
					<td class="title">내용</td>
					<td>
						<textarea rows="15" cols="85" name="content" class="inputBox"></textarea>
					</td>
				</tr>
				<tr>
					<td class="title">작성자</td>
					<td><input type="text" name="writer" class="inputBox" value="${member.id }"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="글쓰기" class="inputBtn"></td>
				</tr>
			</table>
			<div>
				<input type="file" name="uploadFile" multiple>
			</div>
			<div class="uploadResult">
				<ul>
				</ul>
			</div>
			</c:if>
			<c:if test="${msg == false }">
				<p>로그인 하셔야 글을 작성할 수 있습니다.</p>
				<p><a href="http://localhost:8080/member/login">로그인</a></p>
			</c:if>
		</form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="org.readon.domain.MemberVO"%>    
<!DOCTYPE html>
<html>
<head>
<!-- jquery 파일 연결 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 댓글처리하기 위한 javascript 파일(reply.js) 연결 -->
<script src="../resources/js/reply.js"></script>
<script src="../resources/js/attachList.js"></script>
<link rel="stylesheet" href="../resources/css/board_detail.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="board_detail">
	<form method="post">
		<table style="border-collapse:collapse">
			<tr>
				<td colspan="2">독서 노트를 공유해보세요.<input type="hidden" id="bno" name="bno" value="${board.bno}"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="title" value="${board.title}" class="inputBox">
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea rows="15" cols="85" name="content" class="inputBox">${board.content}</textarea>
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					${board.writer}
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" formaction="modify" class="inputBtn">
					<input type="submit" value="삭제" formaction="remove" class="inputBtn">
				</td>
			</tr>
		</table>
	</form>
	</div>
	
	<div class="uploadResult">
		<ul>
		파일업로드 이미지 출력
		</ul>	
	</div>
	
	
		<% MemberVO vo = (MemberVO)session.getAttribute("member");
			if(vo != null){%>
			<div>			
				<textarea rows="3" cols="85" id="reply" class="inputBox"></textarea><br>
				<input type="hidden" value="${member.id}" id="replyer">
				<button id="replyadd">댓글</button>
			</div>
		<%}else{%>
			<div class="loginLink">
				<p>로그인 하셔야 댓글을 작성할 수 있습니다.</p>
				<p><a href="http://localhost:8080/member/login">로그인</a></p>
			</div>
		<%} %>
	<div>
		<ul id="replyList"></ul>
	</div>
	
</body>
</html>







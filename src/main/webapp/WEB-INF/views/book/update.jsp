<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.readon.domain.*" %>
<!DOCTYPE html>
<html>
<head>
<% 
	BookVO book= (BookVO)request.getAttribute("update");	
%>
<meta charset="UTF-8">
<title>책 수정하기</title>
</head>
<body>
	<h1>책 수정하기</h1>
	<form method="post" action="update">
		<p>제목 : <input type="text" name="title" value="${book.title }"> </p>
		<p>저자 : <input type="text" name="writer" value="${book.writer }"> </p>
		<p>카테고리 : <input type="text" name="category" value="${book.category }"></p>
		<p>가격  : <input type="text" name="price" value="${book.price }"></p>
		<p><input type="submit" value="저장"></p>
	</form>
</body>
</html>
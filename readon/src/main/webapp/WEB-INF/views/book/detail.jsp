<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.readon.domain.*" %>
<!DOCTYPE html>
<html>
<head>
<% 
	BookVO book= (BookVO)request.getAttribute("detail");	
%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <h1>책 상세</h1>
	<!-- <p>제목 : <input type="text" name="title" value="${book.title }"> </p> -->
	 <img src="${book.title }" alt="" width="200px" height="300px">
	
	<p>저자 : <input type="text" name="writer" value="${book.writer }"> </p>
	<p>카테고리 : <input type="text" name="category" value="${book.category }"></p>
	<p>가격  : <input type="text" name="price" value="${book.price }"></p>
	<p>입력일 : ${book.insert_date}</p>
	<p><input type="submit" value="저장"></p>
  <form method="POST">
   <input type="hidden" name="book_id" value="${book.book_id}" />
   <input type="submit" formaction="update" value="수정" />
   <input type="submit" formaction="delete" value="삭제" />
  </form>
  <p>
   <a href="list">목록으로</a>
  </p>
 </body>
</html>
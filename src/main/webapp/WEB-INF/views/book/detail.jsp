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
	<img src="${book.book_img}" alt="" width="200px" height="300px">
	<p>제목 : <input type="text" name="book_title" value="${book.book_title }"></p>
	<p>저자 : <input type="text" name="book_writer" value="${book.book_writer }"> </p>
	<p>출판사 : <input type="text" name="book_pub" value="${book.book_pub }"> </p>
	<p>출판일 : <input type="text" name=book_pubdate value="${book.book_pubdate }"> </p>
	<p>정보 : <input type="text" name="book_info" value="${book.book_info }"> </p>
	<p>카테고리 : <input type="text" name="book_cat" value="${book.book_cat }"></p>
	<p>가격  : <input type="text" name="book_price" value="${book.book_price }"></p>
	
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
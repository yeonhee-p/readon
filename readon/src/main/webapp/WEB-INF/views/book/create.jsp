<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 등록</title>
</head>
<body>
	<h1>책 등록</h1>
	<form method="post" action="create">
		<p>제목 : <input type="text" name="book_title"> </p>
		<p>저자 : <input type="text" name="book_writer"> </p>
		<p>출판사 : <input type="text" name="book_pub"></p>
		<p>출판일  : <input type="text" name="book_pubdate"></p>
		<!-- <p>이미지 : <input type="text" name="book_img"> </p>-->
		<p>정보 : <input type="text" name="book_info"></p>
		<p>카테고리 : <input type="text" name="book_cat"></p>
		<p>가격  : <input type="text" name="book_price"></p>
		<input type="submit" value="저장">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>
<style>
	@font-face {font-family: 'Cafe24SsurroundAir'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');font-weight: normal;font-style: normal;}
	body{text-align:center;font-family: 'Cafe24SsurroundAir'; font-size:14px;}
	tr{border-bottom:1px solid #aaa;}
	tr:first-child{border-bottom:2px solid #aaa;}
	td{padding:10px;}
	a{text-decoration:none;color:#333;}
	a:hover{color:#aaa;}
	.bold{font-size:16px;font-weight:bold;}
	.num{width:40px;}
	.cat{width:80px;}
	.date{width:120px;}
	.info{width:300px;}
	
</style>
</head>
<body>
	<table style="border-collapse:collapse">
		<tr class="bold">
			<td class="num">번호</td>
			<td>표지</td>
			<td>제목</td>
			<td class="date">저자</td>
			<td class="date">출판사</td>
			<td class="date">출판일</td>
			<td class="info">정보</td>
			<td class="cat">카테고리</td>
			<td class="cat">가격</td>
		</tr>
		<c:forEach items="${list}" var="book">
			<tr>	
				<td class="num">${book.book_id }</td>
				<td><a href="http://localhost:8080/book/detail?book_id=${book.book_id }"><img src="${book.book_img }" width="150px" height="200px"></a></td>
				<td class="bold info"><a href="http://localhost:8080/book/detail?book_id=${book.book_id }">${book.book_title }</a></td>
				<td class="date">${book.book_writer }</td>
				<td class="date">${book.book_pub }</td>
				<td class="date">${book.book_pubdate }</td>
				<td class="info">${book.book_info }</td>
				<td class="cat">${book.book_cat }</td>
				<td class="cat">\ ${book.book_price }</td>
			</tr>	
		</c:forEach> 
	</table>
</body>
</html>
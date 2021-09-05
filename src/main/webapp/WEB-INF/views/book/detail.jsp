<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.readon.domain.*" %>
<!DOCTYPE html>
<html>
<head>
<% BookVO book= (BookVO)request.getAttribute("detail");	%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@font-face {
    font-family: 'Cafe24SsurroundAir';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}
	body{ font-family: 'Cafe24SsurroundAir';}
	img{border-radius:10px;}
	.bookBox{display:flex;border:1px solid lightsalmon;padding:40px;border-radius:20px; width:700px; margin:0 auto;}
	.bookBox a{text-decoration:none;color:#333; border:1px solid lightsalmon;border-radius:8px;font-size:14px;padding:5px;}
	.bookText{margin-left:40px;}
	.bookTitle{font-size:20px;line-height:30px;font-weight:bold;}
	.listBtn{margin-top:40px;}
</style>
</head>
<body>
  	<div class="bookBox">
		<div>
			<img src="${book.book_img}" alt="" width="250px" height="350px">
		</div>
		<div class="bookText">
			<p class="bookTitle"> ${book.book_title }</p>
			<p>저자 : ${book.book_writer }</p>
			<p>출판사 : ${book.book_pub } </p>
			<p>출판일 : ${book.book_pubdate } </p>
			<p>정보 : ${book.book_info } </p>
			<p>카테고리 : ${book.book_cat }</p>
			<p>가격  : ${book.book_price }</p>
			<p class="listBtn"><a href="list">목록으로</a></p>
		</div>
		
	</div><!-- .bookBox -->
  <form method="POST" hidden>
   <input type="hidden" name="book_id" value="${book.book_id}" />
   <input type="submit" formaction="update" value="수정" />
   <input type="submit" formaction="delete" value="삭제" />
  </form>

 </body>
</html>
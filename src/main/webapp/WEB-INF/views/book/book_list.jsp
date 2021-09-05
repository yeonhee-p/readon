<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>번호</td>
			<td>표지</td>
			<td>제목</td>
			<td>저자</td>
			<td>출판사</td>
			<td>출판일</td>
			<td>정보</td>
			<td>카테고리</td>
			<td>가격</td>
		</tr>
		<c:forEach items="${list}" var="book">
		<tr>
			<td>${board.bno}</td>
			<td><a href="get?bno=${board.bno}">${board.title} [${board.replycnt}]</a></td>
			<td>${board.writer}</td>
			<td><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>
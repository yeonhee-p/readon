<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.sub ul{
	display:flex;
	justify-content: space-around;
	list-style:none;}
</style>
</head>
<body>
	<div class="sub">
        <ul>
            <li><a href="#">소설</a></li>
            <li><a href="#">시/에세이</a></li>
            <li><a href="#">경제/경영</a></li>
            <li><a href="#">자기계발</a></li>
            <li><a href="#">인문</a></li>
            <li><a href="#">역사/문화</a></li>
            <li><a href="#">사회/과학</a></li>
            <li><a href="#">예술</a></li>
            <li><a href="#">취미</a></li>
            <li><a href="#">여행</a></li>
        </ul>
    </div>
  <jsp:include page="list.jsp" flush="true"></jsp:include>
  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- ajax는 jquery에 있기때문에 ajax를 사용하기 위해 jquery 파일 연결 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../resources/js/uploadAjax.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<input type="file" name="uploadFile" multiple>
	</div>
	<button id="uploadBtn">파일업로드</button>
</body>
</html>
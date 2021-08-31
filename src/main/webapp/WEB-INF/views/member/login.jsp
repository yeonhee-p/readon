<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	   @font-face {
            font-family: 'Cafe24SsurroundAir';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2105_2@1.0/Cafe24SsurroundAir.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        *{
            font-family: 'Cafe24SsurroundAir';
        }
        .login_box{
            text-align: center;
            width: 500px;
            height: 500px;
            margin:0 auto;
        }
        form{
            padding:0 140px;
        }
        .input_box{
            width: 200px;
            height: 30px;
            border: 1px solid lightsalmon;
            border-radius: 20px;
            padding: 5px;
        }
        .login_title{
            color: #777;
        }
        .login_btn{
            width: 80px;
            height: 30px;
            border-radius: 15px;
            border: 1px solid #999;
            background-color: #fafafa;
            cursor: pointer;
        }
</style>
</head>
<body>
	<div class="login_box">
        <h1 class="login_title">로그인 / 회원가입</h1>
        <form method="post">
	        <table>
	            <tr>
	                <td><input type="text" name="id" placeholder="아이디" class="input_box" autofocus></td>
	            </tr>
	            <tr>
	                <td><input type="password" name="password" placeholder="비밀번호" class="input_box"></td>
	            </tr>
	            <tr>
	                <td colspan="2">
	                    <input type="submit" value="로그인" formaction="login" class="login_btn" >
	                    <input type="submit" value="회원가입" formaction="join" class="login_btn">
	                </td>
	            </tr>
	        </table>
        </form>
       	<c:if test="${msg == false }">
        	<p style="color:#f00;">로그인에 실패했습니다.<br>아이디 또는 패스워드를 확인해주세요.</p>
        </c:if>
    </div>
</body>
</html>
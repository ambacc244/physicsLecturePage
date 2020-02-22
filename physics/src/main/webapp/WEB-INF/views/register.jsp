<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<script type="text/javascript" src="resources/js/register.js"></script>
</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h1>Register</h1>
	
	<form name="registerForm" action="${path}/lecture/mypage/register" method="post">
		ID : <input type="text" name="userId"><br>
		PW : <input type="password" name="userPw"><br>
		<button type="submit" onclick="register()">Register</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script src="resources/js/login.js"></script>
</head>
<body>
	<h1>Login</h1>
	
	<form name="loginForm" action="${path}/lecture/login" method="post">
		ID : <input type="text" name="userId" ><br>
		PW : <input type="password" name="userPw" ><br>
		<button type="submit" onclick="login()">Login</button>
	</form>
</body>
</html>
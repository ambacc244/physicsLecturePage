<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Login</h1>
	
	<form action="/lecture/userLogin" method="post">
		ID : <input type="text" name="userId" ><br>
		PW : <input type="password" name="userPw" ><br>
		<input type="submit" value="Login" >
	</form>
</body>
</html>
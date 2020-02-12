<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<script src="resources/js/mypage.js"></script>
</head>
<body>
	<h2>Login Success: ${sessionScope.userId} - ${sessionScope.userPw}</h2>
	
	<button onclick="window.location.href='${path}/lecture/logout'">Logout</button>
	<button onclick="window.location.href='${path}/lecture/mypage/addLecture'">Add Lecture</button>
	
	<h2>Register</h2>
	
	<form name="registerForm" action="${path}/lecture/mypage" method="post">
		ID : <input type="text" name="userId"><br>
		PW : <input type="password" name="userPw"><br>
		<button type="submit" onclick="register()">Register</button>
	</form>
</body>
</html>
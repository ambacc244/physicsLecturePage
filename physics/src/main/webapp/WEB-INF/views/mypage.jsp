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
	
	<button type="submit" onclick="logout()">Logout</button>
	<button type="submit" onclick="location.href = '/lecture/create';"">Add lecture</button>
	<!--  
	<h2>Add New Lecture</h2>
	
	<form name="addLectureForm" action="${path}/lecture/mypage" method="post">
		Title : <input type="text" name="title"><br>
		Description : <input type="text" name="description"><br>
		Link : <input type="text" name="link"><br>
		Date : <input type="datetime-local" name="date"><br>
		<button type="submit" onclick="register()">Register</button>
	</form>
	-->
	
	<h2>Register</h2>
	
	<form name="registerForm" action="${path}/lecture/mypage" method="post">
		ID : <input type="text" name="userId"><br>
		PW : <input type="password" name="userPw"><br>
		<button type="submit" onclick="register()">Register</button>
	</form>
</body>
</html>
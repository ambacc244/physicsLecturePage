<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h2>Login Success: ${sessionScope.userId} - ${sessionScope.userPw}</h2>
	<!--  
	<button onclick="window.location.href='${path}/lecture/logout'">Logout</button>
	-->
	<button onclick="window.location.href='${path}/lecture/mypage/addLecture'">Add Lecture</button>
	<button type="submit" onclick="location.href = '/lecture/create';"">Add lecture</button>
	<button onclick="window.location.href='${path}/lecture/mypage/register'">Register</button>
	
</body>
</html>
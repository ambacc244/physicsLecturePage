<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<script type="text/javascript" src="<c:url value="resources/js/login.js"/>"></script>
</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h1>Login</h1>
	
	<form class="login-form" name="loginForm" action="${path}/lecture/login" method="post">
		ID : <input type="text" class="user-id" name="userId"><br>
		PW : <input type="password" class="user-pw" name="userPw"><br>
		<button type="submit" class="submit-button" onclick="return login();">Login</button>
	</form>
</body>
</html>
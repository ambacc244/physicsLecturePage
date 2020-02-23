<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<script src="<c:url value="/resources/js/register.js"/>"></script>

</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h1>Register</h1>
	
	<form class="register-form" name="registerForm" action="${path}/lecture/mypage/register" method="post">
		ID : <input type="text" class="user-id" name="userId"><br>
		PW : <input type="password" class="user-pw" name="userPw"><br>
		<button type="submit" class="submit-button" onclick="return register();">Register</button>
	</form>
	
	${AvailableIdMsg}
	
</body>
</html>
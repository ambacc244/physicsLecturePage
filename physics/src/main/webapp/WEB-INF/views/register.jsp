<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<div id="add-edit-form">
		<h2 class="login-title">Register</h2>
		<form class="register-form" name="registerForm" action="${path}/lecture/mypage/register" method="post">
			<input type="text" class="user-id" name="userId" placeholder="Id"><br>
			<input type="password" class="user-pw" name="userPw" placeholder="Password"><br>
			<input type="text" class="user-name" name="userName" placeholder="Name"><br>
			<button type="submit" id="login-button" onclick="return register();">Register</button>
		</form>
		${AvailableIdMsg}
	</div>

	
<!-- Coding End -->
<script src="<c:url value="/resources/js/register.js"/>"></script>
<%@include file ="partials/footer.jsp" %>
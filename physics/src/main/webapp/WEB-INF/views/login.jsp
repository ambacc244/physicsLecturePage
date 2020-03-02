<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<div id="add-edit-form">
		<h2 class="login-title">Login</h2>
		<form class="login-form" name="loginForm" action="${path}/lecture/login" method="post">
			<input id="user-id" type="text" name="userId" placeholder="Id"><br>
			<input id="user-pw" type="password" name="userPw" placeholder="Password"><br>
			<button type="submit" id="login-button" onclick="return login();">Login</button>
		</form>
	</div>

<!-- Coding End -->
<script src="<c:url value="/resources/js/login.js"/>"></script>
<%@include file ="partials/footer.jsp" %>
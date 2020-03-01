<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h1>Register</h1>
	
	<form class="register-form" name="registerForm" action="${path}/lecture/mypage/register" method="post">
		ID : <input type="text" class="user-id" name="userId"><br>
		PW : <input type="password" class="user-pw" name="userPw"><br>
		NAME : <input type="text" class="user-name" name="userName"><br>
		<button type="submit" class="submit-button" onclick="return register();">Register</button>
	</form>
	
	${AvailableIdMsg}
	
<!-- Coding End -->
<script src="<c:url value="/resources/js/register.js"/>"></script>
<%@include file ="partials/footer.jsp" %>
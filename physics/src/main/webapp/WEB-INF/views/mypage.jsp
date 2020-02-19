<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>My Page</title>
<script src="resources/js/mypage.js"></script>
</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h2>Login Success: ${sessionScope.userId} - ${sessionScope.userPw}</h2>

	<button onclick="location.href = '/lecture/mypage/add'">Add lecture</button>
	<button onclick="window.location.href='${path}/lecture/mypage/register'">Register</button>
	
	<table class="myLectureTable">
		<tr>
		    <th>Title</th>
		    <th>Date</th>
		    <th>Time</th>
		    <th>Edit</th>
		    <th>Delete</th>
		</tr>
		
	 	<c:forEach var="row" items="${list}">
		 	<tr>
		    	<th>${row.lectureTitle}</th>
		    	<th>${row.lectureDate}</th>
		    	<th>${row.lectureTime}</th>
		    	<th><button onclick="editLecture(${row.lectureId})">Edit</button></th>
		    	<th><button onclick="deleteLecture(${row.lectureId})">Delete</button></th>
		    </tr>
	    </c:forEach>
	    
	</table>
	
</body>
</html>
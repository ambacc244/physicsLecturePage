<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
</head>
<body>
	<h2>Login Success: ${sessionScope.userId} - ${sessionScope.userPw}</h2>

	<button onclick="location.href = '/lecture/mypage/add'">Add lecture</button>
	<button onclick="window.location.href='${path}/lecture/mypage/register'">Register</button>
	
	<table class="myLectureTable">
		<tr>
		    <th>Title</th>
		    <th>Date</th>
		    <th>>Edit</th>
		    <th>Delete</th>
		</tr>
		<!-- 
	 	<c:forEach var="row" items="${list}">
		 	<tr>
		    	<th>${row.lectureTitle}</th>
		    	<th>${row.lectureDate}</th>
		    	<th><button>Edit</button></th>
		    	<th><button>Delete</button></th>
		    </tr>
	    </c:forEach>
	     -->
	</table>
	
</body>
</html>
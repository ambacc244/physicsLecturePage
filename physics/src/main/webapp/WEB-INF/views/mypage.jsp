<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h2>Login Success: ${sessionScope.userId} - ${sessionScope.userPw}</h2>

	<button onclick="location.href = '/lecture/mypage/add'">Add lecture</button>
	<button onclick="window.location.href='${path}/lecture/mypage/register'">Register</button>
	
	<table class="my-lecture-table">
		<tr>
		    <th>Title</th>
		    <th>Description</th>
		    <th>Date</th>
		    <th>Time</th>
		    <th>Edit</th>
		    <th>Delete</th>
		</tr>
		
	 	<c:forEach var="row" items="${list}">
		 	<tr>
		    	<th><a href="/lecture/detail?lectureId=${row.lectureId}">${row.lectureTitle}</a></th>
		    	<th>${row.lectureDesc}</th>
		    	<th>${row.lectureDate}</th>
		    	<th>${row.lectureTime}</th>   
		    	<th><button onclick="window.location.href='${path}/lecture/mypage/edit/${row.lectureId}'">Edit</button></th>
		    	<th><button onclick="deleteLecture(${row.lectureId})">Delete</button></th>
		    </tr>
	    </c:forEach>
	    
	</table>
	
<!-- Coding End -->
<script type="text/javascript" src="resources/js/mypage.js"></script>
<%@include file ="partials/footer.jsp" %>

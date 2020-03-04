<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<%@ include file="partials/header.jsp" %>
<script type="text/javascript" src="resources/js/mypage.js"></script>
<script src="<c:url value="/resources/js/lecture.js"/>"></script> 
<!-- Coding Start -->

	<h2>Welcome, ${sessionScope.userName} </h2>

	<button id="add-lecture-button" onclick="location.href='/lecture/mypage/add'">Add lecture</button>
	<button id="register-button" onclick="window.location.href='${path}/lecture/mypage/register'">Register</button>
	
	<table class="my-lecture-table">
		<tr>
		    <th>Title</th>
		    <th>Description</th>
		    <th>Date</th>
		    <th>Time</th>
		    <th>Action</th>
		</tr>
		
	 	<c:forEach var="row" items="${list}">
		 	<tr>
		    	<td><a href="/lecture/detail?lectureId=${row.lectureId}">${row.lectureTitle}</a></td>
		    	<td>${row.lectureDesc}</td>
		    	<td class="mypage-date">${row.lectureDate}</td>
		    	<td><script type="text/javascript">tConvert('${row.lectureTime}');</script></td>   
		    	<td class="mypage-action">
			    	<button id="edit-button" onclick="window.location.href='${path}/lecture/mypage/edit/${row.lectureId}'"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
			    	<button id="delete-button" onclick="deleteLecture(${row.lectureId})"><i class="fa fa-trash" aria-hidden="true"></i></button>
			    </td>
		    </tr>
	    </c:forEach>
	</table>
	
<!-- Coding End -->
<%@include file ="partials/footer.jsp" %>

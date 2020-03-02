<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<div id="add-edit-form">
		<h2>Edit lecture</h2>
		<form class="edit-form" name="editForm" action="${path}/lecture/mypage/edit/${lecture.lectureId}" method="post">
		    <input type="number" class="hidden" name="lectureId" placeholder="Id" value="${lecture.lectureId}"><br>
		    <input type="text" class="lecture-title" name="lectureTitle" placeholder="Title" value="${lecture.lectureTitle}"><br>
		    <textarea class="lecture-desc" name="lectureDesc" cols="30"placeholder="Desription" rows="10">${lecture.lectureDesc}</textarea><br>
			<input type="text" class="lecture-link" name="lectureLink" placeholder="Vedio Link" value="${lecture.lectureLink}"><br>
		  	<input type="date" class="lecture-date" name="lectureDate" placeholder="Date" value="${lecture.lectureDate}"><br>
		  	<input type="time" class="lecture-time" name="lectureTime" placeholder="Time" value="${lecture.lectureTime}"><br>
		 	<button type="submit" class="submit-button" onclick="return editLecture();">Submit</button>
		</form>
	</div>
	
 <!-- Coding End -->
<script src="<c:url value="/resources/js/editLecture.js"/>"></script> 
<%@include file ="partials/footer.jsp" %>
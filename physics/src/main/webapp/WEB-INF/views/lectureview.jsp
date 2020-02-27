<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page isELIgnored="false" %>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

   <h2>Lecture detailed view pages</h2>
  	 	<div class="lecture-title">
  	 		title: ${lecture.lectureTitle}
  	 	</div>
  	 	<div class="instructor-id">instructor id: ${lecture.instructorId }</div>
		<div class="lecture-date">Date: ${lecture.lectureDate } / Time: ${lecture.lectureTime }</div>
		<div class="lecture-video">
			<iframe class="lecture-video-link" width="420" height="345" src= "${lecture.lectureLink}" allowfullscreen="allowfullscreen" ></iframe>
		</div>   
  	 	<div class="lecture-desc">
  	 		Description: ${lecture.lectureDesc }
  	 	</div>

 <!-- Coding End -->
<script src="<c:url value="/resources/js/lectureview.js"/>"></script>
<%@include file ="partials/footer.jsp" %>
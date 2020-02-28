<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page isELIgnored="false" %>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

   	<div class="each-lecture">
	 	<div class="each-video">
			<iframe class="lecture-video-link" width="620" height="350" src= "${lecture.lectureLink}" allowfullscreen="allowfullscreen"></iframe>
		</div>   
		<div class="each each-title">${lecture.lectureTitle}</div>
		<div class="each each-instructor"><i class="fa fa-user" aria-hidden="true"></i> Prof. ${lecture.instructorId}</div>
		<div class="each each-desc">${lecture.lectureDesc}</div>
		<div class="each each-date"><i class="fa fa-calendar-o" aria-hidden="true"></i> ${lecture.lectureDate}      ${lecture.lectureTime }</div>
	</div>
  	 	
 <!-- Coding End -->
<script src="<c:url value="/resources/js/lectureview.js"/>"></script>

<%@include file ="partials/footer.jsp" %>
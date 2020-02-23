<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lecture View Page</title>
<script src="<c:url value="/resources/js/lectureview.js"/>"></script>
</head>
<body>
<%@ include file="partials/header.jsp" %>
   <h1>Lecture detailed view pages</h1>
  	 	<div class="lecture-title">
  	 		title: ${lecture.lectureTitle}
  	 	</div>
  	 	<div class="instructor-id">instructor id: ${lecture.instructorId }</div>
		<div class="lecture-date">Date: ${lecture.lectureDate } / Time: ${lecture.lectureTime }</div>
		<div class="lecture-video">
			<iframe class="lecture-video-link" width="420" height="345" src= "${lecture.lectureLink}" ></iframe>
		</div>   
  	 	<div class="lecture-desc">
  	 		Description: ${lecture.lectureDesc }
  	 	</div>
</body>
</html>
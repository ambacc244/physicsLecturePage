<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="partials/header.jsp" %>
<script src="<c:url value="/resources/js/lecture.js"/>"></script> 
<script src="<c:url value="/resources/js/lectureview.js"/>"></script>
<!-- Coding Start -->

	<h2>Upcoming Lecture Page</h2>

	 <div class="lecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="lecture">
			 	<div class="each-video">
					<iframe class="lecture-video-link" width="300" height="150" src= "${row.lectureLink}"><a href="/lecture/detail?lectureId=${row.lectureId}"></a></iframe>
				</div>
		  <!-- <div class="lecture-icon"><i class="fa fa-calendar-check-o" aria-hidden="true"></i></div> -->      
		        <div class="lecture-title" ><a href="/lecture/detail?lectureId=${row.lectureId}">${row.lectureTitle}</a></div>
				<div class="lecture-date"> 
					Date : ${row.lectureDate} <script type="text/javascript">tConvert('${row.lectureTime}');</script>
				</div>
			</div>
	    </c:forEach>
	 </div>
	 
<!-- Coding End -->
<%@include file ="partials/footer.jsp" %>
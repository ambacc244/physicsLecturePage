<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h2>Upcoming Lecture Page</h2>

	 <div class="upcomming-lecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="upcomming-lecture" style="list-style-type:none">
		 	
		        <div class="upcomming-lecture-header">
		        	<h3 class="upcomming-lecture-title" ><a href="/lecture/detail?lectureId=${row.lectureId}"> <i class="fa fa-calendar-check-o" aria-hidden="true"></i> ${row.lectureTitle} </a> </h3>
		        </div>
				<div class="upcomming-lecture-contents">
					<h4 class="upcomming-lecture-date"> ${row.lectureDesc} </h4>
					<h4 class="upcomming-lecture-date"> Date : ${row.lectureDate} </h4>
					<h4 class="upcomming-lecture-time"> Time : ${row.lectureTime} </h4>
				</div>
			</div>
	    </c:forEach>
	 </div>
	 
<!-- Coding End -->
<%@include file ="partials/footer.jsp" %>
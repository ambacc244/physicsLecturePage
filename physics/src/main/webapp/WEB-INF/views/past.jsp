<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h1>Past Lecture Page</h1>

	 <div class="pastLecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="past-lecture" style="list-style-type:none">
		        <div class="past-lecture-header">
		        	<h2 class="past-lecture-title"><a href="/lecture/detail?lectureId=${row.lectureId}"> Title : ${row.lectureTitle} </a> </h2>
		        </div>
				<div class="past-lecture-contents">
					<h3 class="past-lecture-date"> Date : ${row.lectureDate} </h3>
					<h3 class="upcomming-lecture-time"> Time : ${row.lectureTime} </h3>
				</div>
			</div>
	    </c:forEach>
	 </div>
	 
<!-- Coding End -->
<%@include file ="partials/footer.jsp" %>
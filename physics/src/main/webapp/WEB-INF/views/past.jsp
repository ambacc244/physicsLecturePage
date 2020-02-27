<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h2>Past Lecture Page</h2>

	 <div class="pastLecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="past-lecture" style="list-style-type:none">
		        <div class="past-lecture-header">
		        	<h3 class="past-lecture-title"><a href="/lecture/detail?lectureId=${row.lectureId}"> Title : ${row.lectureTitle} </a> </h3>
		        </div>
				<div class="past-lecture-contents">
					<h4 class="past-lecture-date"> Date : ${row.lectureDate} </h4>
					<h4 class="upcomming-lecture-time"> Time : ${row.lectureTime} </h4>
				</div>
			</div>
	    </c:forEach>
	 </div>
	 
<!-- Coding End -->
<%@include file ="partials/footer.jsp" %>
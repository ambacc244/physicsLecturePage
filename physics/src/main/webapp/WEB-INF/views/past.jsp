<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h2>Past Lecture Page</h2>

	 <div class="lecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="lecture">
		        <div class="lecture-header">
		        	<div class="lecture-title"><a href="/lecture/detail?lectureId=${row.lectureId}"> Title : ${row.lectureTitle} </a> </div>
		        </div>
				<div class="lecture-contents">
					<div class="lecture-date"> Date : ${row.lectureDate} </div>
					<div class="lecture-time"> Time : ${row.lectureTime} </div>
				</div>
			</div>
	    </c:forEach>
	 </div>
	 
<!-- Coding End -->
<%@include file ="partials/footer.jsp" %>
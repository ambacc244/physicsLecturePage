<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page (= Upcoming Lecture Page)</title>
</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h1>Upcoming Lecture Page</h1>

	 <div class="upcomming-lecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="upcomming-lecture" style="list-style-type:none">
		        <div class="upcomming-lecture-header">
		        	<h2 class="upcomming-lecture-title" ><a href="/lecture/detail?lectureId=${row.lectureId}"> Title : ${row.lectureTitle} </a> </h2>
		        </div>
				<div class="upcomming-lecture-contents">
					<h3 class="upcomming-lecture-date"> Date : ${row.lectureDate} </h3>
					<h3 class="upcomming-lecture-time"> Time : ${row.lectureTime} </h3>
				</div>
			</div>
	    </c:forEach>
	 </div>
</body>
</html>
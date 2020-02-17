<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Past Lecture Page</title>
</head>
<body>
<%@ include file="partials/header.jsp" %>
	<h1>Past Lecture Page</h1>

	 <div class="pastLectureContainer">
	 	<c:forEach var="row" items="${list}">
		 	<div class="pastLecture" style="list-style-type:none">
		        <div class="pastLectureHeader">
		        	<h2 class="pastLectureTitle"> Title : ${row.lectureTitle} </h2>
		        </div>
				<div class="pastLectureContents">
					<h3 class="pastLectureDate"> Date : ${row.lectureDate} </h3>
					<h3 class="upcommingLectureDate"> Time : ${row.lectureTime} </h3>
				</div>
			</div>
	    </c:forEach>
	 </div>
</body>
</html>
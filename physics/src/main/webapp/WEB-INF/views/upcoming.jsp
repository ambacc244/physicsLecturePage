<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Main Page (= Upcoming Lecture Page)</title>
</head>
<body>
	<h1>Upcoming Lecture Page</h1>

	 <div class="upcommingLectureContainer">
	 	<c:forEach var="row" items="${list}">
		 	<div class="upcommingLecture" style="list-style-type:none">
		        <div class="upcommingLectureHeader">
		        	<h2 class="upcommingLectureTitle"> Title : ${row.lectureTitle} </h2>
		        </div>
				<div class="upcommingLectureContents">
					<div class="upcommingLectureVideo">
						<iframe width=100% src="${row.lectureLink}"></iframe>
					</div>
					<h3 class="upcommingLectureDate"> Date : ${row.lectureDate} </h3>
				</div>
			</div>
	    </c:forEach>
	 </div>

</body>
</html>
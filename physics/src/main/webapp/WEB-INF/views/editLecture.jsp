<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Lecture Page</title>
<script src="<c:url value="/resources/js/editLecture.js"/>"></script> 

</head>
<body>
<%@ include file="partials/header.jsp" %>
    <h1>Edit lecture</h1>

    <form class="edit-form" name="editForm" action="${path}/lecture/mypage/edit/${lecture.lectureId}" method="post">
    	Id: <input type="number" class="lecture-id" name="lectureId" value="${lecture.lectureId}"><br>
    	Title: <input type="text" class="lecture-title" name="lectureTitle" value="${lecture.lectureTitle}"><br>
    	Description: <textarea class="lecture-desc" name="lectureDesc" cols="30" rows="10">${lecture.lectureDesc}</textarea><br>
		Link: <input type="text" class="lecture-link" name="lectureLink" value="${lecture.lectureLink}"><br>
  		Date: <input type="date" class="lecture-date" name="lectureDate" value="${lecture.lectureDate}"><br>
  		Time: <input type="time" class="lecture-time" name="lectureTime" value="${lecture.lectureTime}"><br>
 		<button type="submit" class="submit-button" onclick="return editLecture();">Submit</button>
    </form>
	
</body>
</html>
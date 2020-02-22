<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Lecture Page</title>
<script type="text/javascript" src="resources/js/editLecture.js"></script> 
</head>
<body>
<%@ include file="partials/header.jsp" %>
    <h1>Edit lecture</h1>

    <form name="editForm" action="${path}/lecture/mypage/edit/${lecture.lectureId}" method="post">
    	Id: <input type="number" name="lectureId" value="${lecture.lectureId}"><br>
    	Title: <input type="text" name="lectureTitle" value="${lecture.lectureTitle}"><br>
    	Description: <textarea name="lectureDesc" cols="30" rows="10">${lecture.lectureDesc}</textarea><br>
		Link: <input type="text" name="lectureLink" value="${lecture.lectureLink}"><br>
  		Date: <input type="date" name="lectureDate" value="${lecture.lectureDate}"><br>
  		Time: <input type="time" name="lectureTime" value="${lecture.lectureTime}"><br>
 		<button type="submit" onclick="editLecture()">Submit</button>
    </form>
	
</body>
</html>
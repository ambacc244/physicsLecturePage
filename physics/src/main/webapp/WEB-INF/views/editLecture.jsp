<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Lecture Page</title>
</head>
<body>
    <h1>Edit lecture</h1>

    <form name="editForm" action="${path}/mypage/edit/${lecture.lectureId}" method="POST">
    	Title:  <input type="text" name="lectureTitle" value="${lecture.lectureTitle}">
    	Description: <textarea name="lectureDesc" cols="30" rows="10">${lecture.lectureDesc}</textarea>
		Link: <input type="text" name="lectureLink" value="${lecture.lectureLink}">
  		Date: <input type="date" name="lectureDate" value="${lecture.lectureDate}">
  		Time: <input type="time" name="lectureTime" value="${lecture.lectureTime}">
 		<button type="submit" onclick="editLecture()">Submit</button>
    </form>
</body>
</html>
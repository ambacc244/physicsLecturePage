<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Lecture</title>
<script src="<c:url value="/resources/js/create.js"/>"></script>
</head>
<body>
<%@ include file="partials/header.jsp" %>
    <h1>Add lecture page</h1>

    <form class="create-lecture-form" name ="createLectureForm" action="${path}/lecture/mypage/add" method="POST">
    	Title: <input type="text" class="lecture-title"  name="lectureTitle" placeholder="lecture title"> 
  		Description: <textarea class="lecture-desc" name="lectureDesc" cols="30" rows="10" placeholder="lecture desc"></textarea>
    	Link: <input type="text" class="lecture-link" name="lectureLink" placeholder="Link Address">
  		Dates: <input type="date" class="lecture-date" name="lectureDate" placeholder="2020-01-01">
		Time: <input type="time" class="lecture-time" name="lectureTime" placeholder="00:00:00">
		<button type="submit" class="submit-button" onclick="return checkInputIsNull();">Submit</button>
    </form>
</body>
</html>
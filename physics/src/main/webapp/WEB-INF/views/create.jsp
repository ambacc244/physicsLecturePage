<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Lecture</title>
<script type="text/javascript" src="resources/js/create.js"></script>
</head>
<body>
<%@ include file="partials/header.jsp" %>
    <h1>Add lecture page</h1>

    <form name="createLectureForm" class="create-lecture-form" action="${path}/lecture/mypage/add" method="POST">
    	Title: <input type="text" name="lectureTitle" placeholder="lecture title">
  		Description: <textarea name="lectureDesc" cols="30" rows="10" placeholder="lecture desc"></textarea>
    	Link: <input type="text" name="lectureLink" placeholder="Link Address">
  		Dates: <input type="date" name="lectureDate" placeholder="2020-01-01">
		Time: <input type="time" name="lectureTime" placeholder="00:00:00">
		<button type="submit" onclick="checkInputIsNull()">Submit</button>
    </form>
</body>
</html>
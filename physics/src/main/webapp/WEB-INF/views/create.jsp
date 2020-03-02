<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

    <h2>Add lecture page</h2>

    <form class="create-lecture-form" name ="createLectureForm" action="${path}/lecture/mypage/add" method="POST">
    	<input type="text" class="lecture-title"  name="lectureTitle" placeholder="Lecture Title"><br>
  		<textarea class="lecture-desc" name="lectureDesc" cols="30" rows="10" placeholder="Lecture Descciption"></textarea><br>
    	<input type="text" class="lecture-link" name="lectureLink" placeholder="Video Link"><br>
  		<input type="date" class="lecture-date" name="lectureDate" placeholder="Date"><br>
		<input type="time" class="lecture-time" name="lectureTime" placeholder="Time"><br>
		<button type="submit" class="submit-button" onclick="return checkInputIsNull();">Submit</button>
    </form>

<!-- Coding End -->
<script type="text/javascript" src="<c:url value="/resources/js/create.js"/>"></script> 
<%@include file ="partials/footer.jsp" %>
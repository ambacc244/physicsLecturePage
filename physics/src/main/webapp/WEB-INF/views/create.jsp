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

    <form class="create-lecture-form" action="${path}/lecture/mypage/add" method="POST">
       <div class="tableForm">
            <label>Title</label>
            <input type="text" name="lectureTitle" class="createForm" placeholder="lecture title">
        </div>
        <div class="tableForm">
            <label>Description</label>
            <textarea name="lectureDesc" cols="30" rows="10" class="createForm" placeholder="lecture desc"></textarea>
        </div>
        <div class="tableForm">
            <label>Link</label>
            <input type="text" name="lectureLink" class="createForm" placeholder="Link Address">
        </div>
        <!--  TODO: THIS COMMENT SHOULD BE DELETED WHEN THE WHOLE WORK IS ABOUT TO BE FINISHED.
        <div class="tableForm">
            <label>Author Id</label>
            <input type="text" name="instructorId" class="createForm" placeholder="이건 나중에지울거야!">
        </div>
        -->
        <div class="tableForm">
            <label>Dates</label>
            <input type="date" name="lectureDate" class="createForm" placeholder="lecture Date">
        </div>
        <div class="tableForm">
            <label>Time</label>
            <input type="time" name="lectureTime" class="createForm" placeholder="lecture time">
        </div>
        <div class="tableForm">
            <button type="submit" class="submitForm" onclick="return checkInputIsNull();">Submit</button>
        </div>
    </form>
</body>
</html>
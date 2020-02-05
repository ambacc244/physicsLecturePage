<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lecture List</title>
</head>
<body>
    <h1>Add lecture</h1>

    <form action="/lecture/lecture/create" method="POST">
        <div class="createForm">
            <label>Title</label>
            <input type="text" name="lectureTitle" class="createForm" placeholder="lecture title">
        </div>
        <div class="createForm">
            <label>Description</label>
            <textarea name="lectureDesc" cols="30" rows="10" placeholder="lecture desc"></textarea>
        </div>
        <div class="createForm">
            <label>Author</label>
            <input type="text" name="lectureLink" class="createForm" placeholder="author">
        </div>
        <div class="formFooter">
            <button type="submit" class="btn_botton">Submit</button>
        </div>
    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Lecture</title>
<script>
    function checkInputIsNull(){
        var i = 0;
        var x = document.getElementsByClassName("createForm");
        for(;i < x.length; i++){
            if( x[i].value === ''){
                alert("You should write something");
                return false;
            }
        }
        return true;
    }
</script>
</head>
<body>
    <h1>Add lecture</h1>

    <form action="${path}/lecture/create" method="POST">
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
        <div class="tableForm">
            <label>Author Id</label>
            <input type="text" name="instructorId" class="createForm" placeholder="이건 나중에지울거야!">
        </div>
        <div class="tableForm">
            <label>Date</label>
            <input type="date" name="lectureDate" class="createForm" placeholder="lecture Date">
        </div>
        <div class="tableForm">
            <button type="submit" class="submitForm" onclick="return checkInputIsNull();">Submit</button>
        </div>
    </form>
</body>
</html>
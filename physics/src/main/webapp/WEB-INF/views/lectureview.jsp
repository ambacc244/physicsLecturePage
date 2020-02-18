<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lecture View Page</title>
</head>
<body>
<%@ include file="partials/header.jsp" %>
    <h1>Lecture view page</h1>
    <div>
        Title: ${detail}
    </div>
</body>
</html>
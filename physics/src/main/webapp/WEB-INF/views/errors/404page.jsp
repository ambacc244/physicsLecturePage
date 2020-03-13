<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ include file="../partials/header.jsp" %>


<h1 class="page-not-found"> 404 - Page Not Found</h1>
<!-- image source from: https://www.vectorstock.com/royalty-free-vector/modern-of-404-error-page-vector-15232181 -->
<img class="page-not-found" src="<c:url value="/resources/images/404page.PNG"/>"/></img>
<h2>Page is not found! check your url!</h2>
<h2 class="page-not-found"><a href="/lecture" class="go-home">Go home</a></h2>
<%@include file ="../partials/footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css?ver=1" type="text/css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style2.css?ver=2" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<header>
    <aside id="header_aside" role="complementary">
    <!-- not logined -->
    <div class="headerbar">
	    <h1 class = "site-title"><a href = "${path}/lecture"> Physic Virtual Class Room </a></h1>
	    <c:choose>
	    	<c:when test="${sessionScope.userId == null}">
		    	<button id="login-button" onclick="window.location.href='${path}/lecture/login'">Login</button>
	    	</c:when>
	  		<c:otherwise>
				<!-- logined -->
				<button id="mypage-button" onclick="window.location.href='${path}/lecture/mypage'"><i class="fa fa-user" aria-hidden="true"></i></button>
				<button id="logout-button" onclick="window.location.href='${path}/lecture/logout'">Logout</button>
			</c:otherwise>
		</c:choose>
    </div>
    <nav class = "navbar">
      <ul class="navbar-items" >
        <li class = "navitem"><a href = "${path}/lecture/"> Upcoming Lecture </a></li>
        <li class = "navitem"><a href = "${path}/lecture/past"> Past Lecture </a> </li>
      </ul>
    </nav>
  </aside>
</header>
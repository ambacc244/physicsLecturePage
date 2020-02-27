<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css?after" type="text/css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<header>
 
  <aside id="header_aside" role="complementary">
  	<!-- not logined -->
   	<button onclick="window.location.href='${path}/lecture/login'">Login</button>
 	<!-- logined -->
	<button onclick="window.location.href='${path}/lecture/mypage'">My Page</button>
	<button onclick="window.location.href='${path}/lecture/logout'">Logout</button>
	
    <h1 class = "site-title"><a href = "${path}/lecture"> Physic Virtual Class Room </a></h1>
    <nav class = "navbar">
      <ul class="navbar-items" >
        <li class = "navitem"><a href = "${path}/lecture/"> Upcoming Lecture </a></li>
        <li class = "navitem"><a href = "${path}/lecture/past"> Past Lecture </a> </li>
      </ul>
    </nav>
  </aside>
</header>
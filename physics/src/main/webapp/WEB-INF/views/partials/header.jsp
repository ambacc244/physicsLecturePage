<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
</head>
<body>

<header>
 
 <%@ include file="mypageHeader.jsp" %>	
 <%@ include file="loginHeader.jsp" %>
 
  <aside id="header_aside" role="complementary">
    <h1 class = "site-title"><a href = "${path}/lecture"> Physic Virtual Class Room </a></h1>
    <nav class = "navbar">
      <ul class="navbar-items" >
        <li class = "navitem"><a href = "${path}/lecture/"> Upcoming Lecture </a></li>
        <li class = "navitem"><a href = "${path}/lecture/past"> Past Lecture </a> </li>
      </ul>
    </nav>
  </aside>
</header>
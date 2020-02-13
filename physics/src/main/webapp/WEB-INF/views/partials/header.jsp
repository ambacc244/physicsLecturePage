<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>

<%@ include file="loginHeader.jsp" %>
<%@ include file="mypageHeader.jsp" %>

  <aside id="header_aside" role="complementary">
    <h1 class = "site-title"><a href = "${path}/lecture"> Physic Virtual Class Room </a></h1>
    <nav class = "navbar">
      <ul id="navbar_id" >
        <li class = "navitem"><a href = "${path}/lecture/"> Upcoming Lecture </a></li>
        <li class = "navitem"><a href = "${path}/lecture/past"> Past Lecture </a> </li>
      </ul>
    </nav>
  </aside>
</header>
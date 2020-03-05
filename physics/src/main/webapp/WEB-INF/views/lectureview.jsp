<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ page isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% pageContext.setAttribute("replaceChar", "\n"); %>

<%@ include file="partials/header.jsp" %>
<script src="<c:url value="/resources/js/lectureview.js"/>"></script>
<script src="<c:url value="/resources/js/lecture.js"/>"></script> 
<!-- Coding Start -->

   	<div class="each-lecture">
	 	<div class="each-video">
			<iframe class="lecture-video-link" width="620" height="350" src= "${lecture.lectureLink}" allowfullscreen="allowfullscreen"></iframe>
		</div>   
		<div class="each each-title">${lecture.lectureTitle}</div>
		<div class="each each-instructor"><i class="fa fa-user" aria-hidden="true"></i> Prof. ${lecture.instructorId}</div>
		<div class="each each-desc">${fn:replace(lecture.lectureDesc, replaceChar, "<br/>")}</div>
		<div class="each each-date"><i class="fa fa-calendar-o" aria-hidden="true"></i> 
			${lecture.lectureDate} <script type="text/javascript">tConvert('${lecture.lectureTime}');</script>
		</div>
	</div>
  	 	
 <!-- Coding End -->
<%@include file ="partials/footer.jsp" %>
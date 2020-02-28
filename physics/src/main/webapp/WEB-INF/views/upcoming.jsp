<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="partials/header.jsp" %>
<!-- Coding Start -->

	<h2>Upcoming Lecture Page</h2>

	 <div class="lecture-container">
	 	<c:forEach var="row" items="${list}">
		 	<div class="lecture" style="list-style-type:none">
		        <div class="lecture-header">
		        	<div class="lecture-title" ><a href="/lecture/detail?lectureId=${row.lectureId}"> <i class="fa fa-calendar-check-o" aria-hidden="true"></i> ${row.lectureTitle} </a> </div>
		        </div>
				<div class="lecture-contents">
					<div class="lecture-date"> ${row.lectureDesc} </div>
					<div class="lecture-date"> Date : ${row.lectureDate} </div>
					${row.lectureTime}
					<div class="lecture-time"> 
						<script type="text/javascript">
						tConvert(${row.lectureTime});
						</script>
					</div>
				</div>
			</div>
	    </c:forEach>
	 </div>
	 
<!-- Coding End -->
<script src="<c:url value="/resources/js/lecture.js"/>"></script> 
<%@include file ="partials/footer.jsp" %>
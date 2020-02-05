<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lecture List Page</title>
        <script type="text/javascript">
        </script>
    </head>
    <body>
        <c:forEach items="${lectureList}" var="lectureVO">
            ${lectureVO.lectureDesc}
        </c:forEach>
    </body>
</html>
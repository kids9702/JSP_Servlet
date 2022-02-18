<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 지시자 -->
<%@include file="tmp/a.jsp" %>

<!-- 액션태그(파라미터지정가능) -->
<jsp:include page="tmp/b.jsp" >
<jsp:param value="2banner.jpg" name="img2"/>
<jsp:param value="3banner.jpg" name="img3"/>
</jsp:include>



</body>
</html>
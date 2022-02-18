<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 새로고침 요청 -->
<%
	response.setIntHeader("Refresh",3);
%>
<%=new java.util.Date() %>

</body>
</html>
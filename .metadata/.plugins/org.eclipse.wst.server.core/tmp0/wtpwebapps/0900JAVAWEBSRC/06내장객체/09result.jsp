<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	out.println(request.getAttribute("key1") + "<br>");
	out.println(request.getAttribute("key2") + "<br>");
%>
</body>
</html>
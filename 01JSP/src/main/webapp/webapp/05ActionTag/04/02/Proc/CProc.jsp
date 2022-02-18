<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- C페이지에서 해야될 작업들을 기입 -->

<!-- 03Result.jsp페이지로 Forwarding -->
<jsp:forward page="../03Result.jsp">
<jsp:param name="CProc" value="CContents" />
</jsp:forward>
</body>
</html>
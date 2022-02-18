<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Main Page!!!</h2>
<% 
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	out.print("ID : "+id+"<br>");
	out.print("PW : "+pw+"<br>");
	%>
</body>
</html>
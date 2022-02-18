<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>B Type</h1>
<%
	String userid=request.getParameter("userid");
	String pwd=request.getParameter("pwd");
	String roles=request.getParameter("roles");
	out.print("USER ID : " + userid + "<br>");
	out.print("PWD : " + pwd + "<br>");
	out.print("Roles : " + roles + "<br>");
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>MAIN PAGE</h1>

<%
	String id = (String)session.getAttribute("idkey");
	String pw = (String)session.getAttribute("pwkey");
%>

접속 ID : <%=id %><br>
접속 PW : <%=pw %><br>
<hr>
<a href="02Logout.jsp">로그아웃</a>

</body>
</html>
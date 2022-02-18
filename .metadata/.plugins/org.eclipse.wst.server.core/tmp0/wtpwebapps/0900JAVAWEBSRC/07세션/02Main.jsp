<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>MAIN PAGE</h1>
<%
	String id = (String)session.getAttribute("idkey");
	String pw = (String)session.getAttribute("pwkey");
%>
접속ID : <%=id %><br>
접속PW : <%=pw %><br>
<hr>
<a href="02Logout.jsp">로그아웃</a>

</body>
</html>
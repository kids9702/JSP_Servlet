<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Sessison Page</h1>

<%
	String id = "abcd";
	String pw = "1234";
	session.setAttribute("idkey", id);
	session.setAttribute("pwkey", pw);
	session.setMaxInactiveInterval(30); // Default 30분 
%>
세션 생성완료!!<br>
<a href="01result.jsp">세션 확인 페이지로 이동</a>


</body>
</html>
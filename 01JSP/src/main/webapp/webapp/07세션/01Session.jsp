<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Session Page</h1>

<%
	String id="abcd";
	String pw="1234";
	session.setAttribute("idkey",id);
	session.setAttribute("pwkey",pw);
	session.setMaxInactiveInterval(30); //session 유지 시간, Default 30분
%>
세션 생성 완료!!<br>
<a href="01Result.jsp">세션 확인 페이지로 이동</a>


</body>
</html>
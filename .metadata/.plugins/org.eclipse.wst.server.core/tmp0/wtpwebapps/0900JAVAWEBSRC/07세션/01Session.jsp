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
	session.setMaxInactiveInterval(30); // Default 30�� 
%>
���� �����Ϸ�!!<br>
<a href="01result.jsp">���� Ȯ�� �������� �̵�</a>


</body>
</html>
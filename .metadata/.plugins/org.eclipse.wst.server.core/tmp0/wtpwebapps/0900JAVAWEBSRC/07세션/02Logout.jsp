<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sbean" class="Ch07.SaveSession" scope="application" />

<%
	String id = (String)session.getAttribute("idkey");
	sbean.slist.remove(id);
	System.out.println(id + " 계정 세션 제거");
	//세션 제거
	session.invalidate();
	response.sendRedirect("02Login.jsp");
	
	
%>

</body>
</html>
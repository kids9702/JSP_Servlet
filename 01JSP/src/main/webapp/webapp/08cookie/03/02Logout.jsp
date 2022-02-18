<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sbean" class="Ch07.SaveSession" scope="application" />

<%	
	
	//세션에서 id 받아오기
	String id = (String)session.getAttribute("idkey");
	sbean.slist.remove(id);
	//세션 제거
	session.invalidate();
	response.sendRedirect("02Login.jsp");
	
	
%>

</body>
</html>
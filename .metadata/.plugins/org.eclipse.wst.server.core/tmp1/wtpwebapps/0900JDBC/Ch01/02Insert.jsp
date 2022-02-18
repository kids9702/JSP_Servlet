<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="DBMgr" class="Ch02.DBConnMgr" scope="application" />
<h1>INSERT PAGE</h1>
<%
	String username = request.getParameter("username");
	String phone=request.getParameter("phone");
	
	DBMgr.InsertFunc(username, phone);
%>
<!-- <a href="javascript:history.go(-1)">이전으로</a> -->
<a href="javascript:location.href='01DBConn.jsp'">이전으로</a>

</body>
</html>
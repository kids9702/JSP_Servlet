<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="DBMgr" class="Ch03.StdDAO" scope="page" />
<h1>DELETE PAGE</h1>
<%	
	int id = Integer.parseInt(request.getParameter("id"));
	
	DBMgr.DeleteFunc(id);
	
%>
<a href="javascript:location.href='01DBConn.jsp'">이전으로</a>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- dispatcher -->

<%
	request.setAttribute("key1", "value1");
	request.setAttribute("key2", "value2");
	
	//redirect
	//response.sendRedirect("09Result.jsp");
	
	//dispatcher
	request.getRequestDispatcher("09Result.jsp").forward(request,response);
%>

</body>
</html>
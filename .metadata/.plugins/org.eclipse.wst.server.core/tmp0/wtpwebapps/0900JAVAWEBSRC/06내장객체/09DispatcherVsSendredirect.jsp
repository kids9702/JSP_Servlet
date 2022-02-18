<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- dispacher  -->
	<%
		
		request.setAttribute("key1", "value1");
		request.setAttribute("key2", "value2");
		
		// redirect
		//response.sendRedirect("09result.jsp");
		request.getRequestDispatcher("09result.jsp").forward(request,response);
	
	%>

</body>
</html>






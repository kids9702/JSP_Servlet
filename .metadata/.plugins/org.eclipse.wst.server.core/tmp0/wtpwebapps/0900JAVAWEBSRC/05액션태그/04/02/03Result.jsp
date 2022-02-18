<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String A = request.getParameter("AProc");
	String B = request.getParameter("BProc");
	String C = request.getParameter("CProc");
	
	if(A!=null){out.println("A 작업 : " + A +"<br>");}
	if(B!=null){out.println("B 작업 : " + B +"<br>");}
	if(C!=null){out.println("C 작업 : " + C +"<br>");}
%>




</body>
</html>
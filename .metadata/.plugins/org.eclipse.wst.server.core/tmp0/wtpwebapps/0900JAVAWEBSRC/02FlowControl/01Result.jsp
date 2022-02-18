<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String bgname = request.getParameter("bgname");
	String bgcolor = request.getParameter("bgcolor");
	out.println("BGNAME : " + bgname + "<br>");
	out.println("BGCOLOR : " + bgcolor + "<br>");
	if(bgcolor.equals("etc")){
		bgcolor="gray";
	}
		
%>

<body bgcolor=<%=bgcolor %>>
</body>
</html>



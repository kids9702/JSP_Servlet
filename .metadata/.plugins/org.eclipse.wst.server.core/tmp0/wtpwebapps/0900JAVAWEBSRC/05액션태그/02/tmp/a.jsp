<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>지시자 페이지</h1>
<%
	String img=request.getParameter("imgname");
	out.print("이미지 : " + img);
%>
<img src=img/<%=img %> />


</body>
</html>
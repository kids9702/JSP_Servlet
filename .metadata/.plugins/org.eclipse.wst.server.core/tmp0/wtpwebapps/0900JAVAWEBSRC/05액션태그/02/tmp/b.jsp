<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>include 액션태그</h1>
<%
	String img=request.getParameter("imgname");
	String img2=request.getParameter("img2");
	String img3=request.getParameter("img3");
	out.print("이미지 : " + img);
%>
<img src=img/<%=img %> />
<img src=img/<%=img2 %> />
<img src=img/<%=img3 %> />


</body>
</html>
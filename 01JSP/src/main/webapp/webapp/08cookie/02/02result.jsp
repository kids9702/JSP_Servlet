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
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			out.println(cookies[i].getName() + "<br>");
			out.println(cookies[i].getValue() + "<br>");
		}
	}
%>
<a href="02remove.jsp?name=c1&flag=global">쿠키제거(c1)</a><br>
<a href="02remove.jsp?name=c2&flag=current">쿠키제거(c2)</a>

</body>
</html>
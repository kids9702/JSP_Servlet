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
	int i=0;
	for(i=0;i<10;i++){
		out.write("HelloWorld-JSP<br>");
	}
%>
<hr>
<script>
	for(i=0;i<10;i++){
		document.write("HelloWorld-Javascript<br>");
	}
</script>





</body>
</html>
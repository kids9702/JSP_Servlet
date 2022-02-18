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
	for(int i=0;i<4;i++){
		
		for(int j=0;j<=i;j++){
			%>
				<img src="person.svg" width=50px height=50px>
			<%
		}
		%>
		<br>
		<%
	}

%>



</body>
</html>
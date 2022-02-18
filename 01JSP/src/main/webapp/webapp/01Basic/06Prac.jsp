<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 문제 
2단부터 9단까지 스크립틀릿을 이용해서 찍어보세요-->

<%

	int i = 0;
	int j = 0;
	for(i=1; i<10; i++){
		for(j=2; j<10; j++){
			out.write(j + "X" + i + "=" + (i*j) + "&nbsp&nbsp&nbsp");
		}
		out.write("<br>");
	}
%>

</body>
</html>
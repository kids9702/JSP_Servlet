<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
문제 

2단부터 9단까지 스크립틀릿을 이용해서 찍어보세요 ~
-->
<style>
	table{ border:1px solid gray;display:inline-block;}
	td{border : 1px solid gray; width:50px;height:50px;}
</style>

<%
	int dan=2;
	int i=1;
	
	for(dan=2;dan<=9;dan++){	
		%>
		<table>
		<%
		for(i=1;i<=9;i++){
		%>
			<tr>
			<td><%=dan %></td>
			<td><%=i %></td>
			<td><%=(dan*i) %></td>
			</tr>	
		<%
		}
		%>
		</table>
		<%
	}
%>




</body>
</html>
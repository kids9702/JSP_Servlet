<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String td1color = request.getParameter("td1color");
	String td2color = request.getParameter("td2color");
	String td3color = request.getParameter("td3color");
	if(td1color.equals("etc")){
		td1color = "gray";
	}
	if(td2color.equals("etc")){
		td2color = "gray";
	}
	if(td3color.equals("etc")){
		td3color = "gray";
	}
%>
<body>
<style>
	td{border:1px solid gray; width:200px; height:200px;}
</style>
<table>
	<tr>
		<td bgcolor=<%=td1color%>></td>
		<td bgcolor=<%=td2color%>></td>
		<td bgcolor=<%=td3color%>></td>
	</tr>
</table>

</body>
</html>
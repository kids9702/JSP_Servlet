<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="DBMgr" class="Ch03.StdDAO" scope="page" />
<h1>DB CONN 확인</h1>
<hr>
<div style="overflow:auto; width:300px; height:150px; border:1px solid gray">
<%@page import="Ch03.*,java.util.*" %>
<style>
	td{width:30px; height:30px;border:1px solid gray;}
</style>
<table>
<%
	Vector<StdDTO>list=DBMgr.SelectFunc();
	for(int i=0;i<list.size();i++){
		out.print("<tr>");
		out.print("<td>"+list.get(i).getId()+"</td>");
		out.print("<td>"+list.get(i).getName()+"</td>");
		out.print("<td style='width:100px'>"+list.get(i).getPhone()+"</td>");
		out.print("</tr>");
	}
%>
</table>
</div>
<h2>INSERT 확인</h2>
<form action="02Insert.jsp">
	이름 : <input name="username"><br>
	연락처 : <input name="phone"><br>
	<input type="submit" value="INSERT">
</form>
<hr>
<h2>UPDATE확인</h2>
<form action="03Update.jsp">
	이름 : <input name="id"><br>
	변경 이름 : <input name="username"><br>
	변경 연락처 : <input name="phone"><br>
	<input type="submit" value="UPDATE">
</form>
<hr>
<h2>DELETE확인</h2>
<form action="04Delete.jsp">
	ID : <input name="id"><br>
	<input type="submit" value="DELETE">
</form>

</body>
</html>
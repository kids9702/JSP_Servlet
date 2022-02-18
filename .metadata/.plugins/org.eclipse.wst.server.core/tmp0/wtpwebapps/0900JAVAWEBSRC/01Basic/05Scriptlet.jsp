<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	java.util.Scanner sc = new java.util.Scanner(System.in);
%>
<%
	
	String str=null;	
	int i=0;
	for(i=0;i<10;i++)
	{
		System.out.print("입력 : ");
		str=sc.nextLine();
		out.println(str+"<br>");	
	};
	sc.close();
%>

</body>
</html>
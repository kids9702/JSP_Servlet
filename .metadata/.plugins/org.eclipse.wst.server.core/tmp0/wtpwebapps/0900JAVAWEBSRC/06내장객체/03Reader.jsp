<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.io.*" %>
<%
	try{
	
		Reader fin = new FileReader("C:\\JSPTMP\\weblog.txt");
		int data;
		while(true){
			data = fin.read();
			if(data==-1)	//더이상 읽을문자가 없다면(-1)
			{
				break;
			}
			if(data=='\n'){
				out.println("<br>");
			}
				
			out.println((char)data);
		}
	
	}catch(Exception e){
	
	}

%>

</body>
</html>
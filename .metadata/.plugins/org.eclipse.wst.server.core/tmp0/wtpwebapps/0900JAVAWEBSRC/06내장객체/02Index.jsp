<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Web Page</h1>

<%
	String remoteIP = request.getRemoteAddr();
	String method = request.getMethod();
	String browser =request.getHeader("User-Agent");
%>


<%@page import="java.io.*,java.util.*" %>

<%
	
	//디렉토리 생성
	File dirpath = new File("c:\\JSPTMP"); //File클래스로 파일경로설정
	if(dirpath.exists()==false) //해당경로가 없다면
	{
		dirpath.mkdirs(); //디렉토리 생성
	}
	
	//파일생성
	Date date = new Date();	//현재 날짜정보 
	Writer fout = new FileWriter("c:\\JSPTMP\\weblog.txt",true);
	fout.write(date+" | ");
	fout.write(remoteIP + " | ");
	fout.write(method + " | ");
	fout.write(browser + "\n");
	
	fout.flush();
	fout.close();
%>








</body>
</html>
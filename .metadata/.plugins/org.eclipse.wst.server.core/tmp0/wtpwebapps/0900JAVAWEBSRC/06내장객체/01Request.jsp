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
	String protocol = request.getProtocol();
	String servername = request.getServerName();
	int ServerPort = request.getServerPort();
	String remoteAddr = request.getRemoteAddr();
	String remotehost = request.getRemoteHost();
	String method = request.getMethod();
	StringBuffer RequestURL = request.getRequestURL();
	String useBrowser = request.getHeader("User-Agent");
	String fileType = request.getHeader("Accept");
%>
프로토콜 : <%=protocol %><br>
서버이름 : <%=servername %><br>
포트번호 : <%=ServerPort %><br>
원격IP : <%=remoteAddr %><br>
원격Host : <%=remotehost %><br>
Method : <%=method %><br>
URL : <%=RequestURL %><br>
use브라우저 : <%=useBrowser %><br>
브라우저 지원 file type = <%=fileType %><br>












</body>
</html>
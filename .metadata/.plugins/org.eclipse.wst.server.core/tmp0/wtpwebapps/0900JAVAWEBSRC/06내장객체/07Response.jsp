<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--  
	no-cache : 브라우저가 캐시공간에 값을 저장하여 표시하지 않고 매번 새로운 요청을 통해서 서버로부터 전송받게끔 설정
-->
<%
	response.setHeader("Cache-Control","no-store");
%>



</body>
</html>
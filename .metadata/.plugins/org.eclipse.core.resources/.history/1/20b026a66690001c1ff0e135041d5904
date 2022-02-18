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
	scope 속성값 정리
	page : 현재 페이지에서만 유효
	request : 요청값 처리를 하는 동안에만 유효
	session : 현재 브라우저를 활성화 시켜놓은 상태에서만 유효
	application : 서비스(톰캣)가 활성화되어 있는 상태에서만 유효
	 
 -->

<!-- bean 적용 -->
<jsp:useBean id="bean1" class="Ch05.C01Bean" scope="page" />

<!-- bean에 값 넣기(Action Tag) -->
<jsp:setProperty name="bean1" property="message1" value="Hello World!-1" />

<!-- bean 값 가져오기(Action Tag) -->
<jsp:getProperty name="bean1" property="message1" /><br>

<!-- bean 값 넣기(Scriptlet) -->
<%
	bean1.setMessage2("Hello World!-2");
	out.print(bean1.getMessage2());
%>

</body>
</html>
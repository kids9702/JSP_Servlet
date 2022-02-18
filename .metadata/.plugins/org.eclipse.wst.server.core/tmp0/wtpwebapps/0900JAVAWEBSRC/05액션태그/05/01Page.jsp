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
	application : 서비스(톰캣)가 활성화 되어 있는 상태에서만 유효
	
-->

<!-- bean 적용 -->
<jsp:useBean id="bean1" class="Ch05.C01Bean" scope="page" />

<!-- bean에 값넣기(Actiontag)  -->
<jsp:setProperty name="bean1" property="message1" value="HelloWorld1!" />

<!-- bean값 가져오기(Actiontag) -->
<jsp:getProperty name="bean1" property="message1" /><br>

<!-- 스크립틀릿 이용 -->
<%
	bean1.setMessage2("HelloWorld2!!");
	out.print(bean1.getMessage2());
%>

</body>
</html>
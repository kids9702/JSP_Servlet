<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- memBean빈객체 생성 -->
<jsp:useBean id="memBean" class="Ch05.C02Member" scope="page" />
<!-- memBean빈객체 02MemberJoin에서 전달된 파라미터값 저장 -->
<jsp:setProperty name="memBean" property="*" /> 
<%
	out.print(memBean.toString());
%>

</body>
</html>
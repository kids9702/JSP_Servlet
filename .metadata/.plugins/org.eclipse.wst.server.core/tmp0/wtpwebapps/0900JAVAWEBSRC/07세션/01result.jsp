<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>세션확인페이지</h1>
	<%
		String id = (String)session.getAttribute("idkey");
		String pw = (String)session.getAttribute("pwkey");
	%>
	
세션ID : <%=session.getId() %><br>
계정ID : <%=id %><br>
계정PW : <%=pw %><br>
유지시간 : <%=session.getMaxInactiveInterval() %><br>
경과시간 : <%=session.getCreationTime() %><br>
<!--  
getCreationTime()
1970년 1월 1일 0시 0초를 기준으로 현재 세션이 생성된 시간까지 경과한 시간을 1/1000초 값으로 리턴
-->
</body>
</html>
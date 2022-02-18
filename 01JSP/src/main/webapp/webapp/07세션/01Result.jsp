<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>세션 확인 페이지</h1>
<%
	String id = (String)session.getAttribute("idkey");
	String pw = (String)session.getAttribute("pwkey");
%>

세션 ID : <%=session.getId() %><br>
계정 ID : <%=id %><br>
계정 PW : <%=pw %><br>
유지시간 : <%=session.getMaxInactiveInterval() %><br>
경과시간 : <%=session.getCreationTime() %><br>
<!-- 
getCreationTime()
1970년 1월 1일 0시 0초를 기준으로 현재 세션이 생성된 시간까지 경과한 시간을 1/1000초 값으로 리턴
 -->

</body>
</html>
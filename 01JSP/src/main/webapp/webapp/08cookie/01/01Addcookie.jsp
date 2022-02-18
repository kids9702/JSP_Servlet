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
	1 접속한 유저별로 방문회수 Count
	2 ID/PW 자동 저장
	3 장바구니 기능
 -->

<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("utf-8");

	String cname = "mycookie";
	Cookie cookie = new Cookie(cname,"apple"); //쿠키 생성
	cookie.setValue("orange");
	cookie.setMaxAge(60*60); //쿠키 유지시간(초단위), 입력하지 않으면 기본 웹브라우저가 종료될 때까지
	response.addCookie(cookie); //쿠키 전달
	
	Cookie cookie2 = new Cookie("bag","00백팩");
	cookie2.setMaxAge(10);
	response.addCookie(cookie2);
%>
<h1>쿠키 생성 페이지</h1>
쿠키 생성 완료!<br>
<a href="01result.jsp">쿠키 확인</a>


</body>
</html>
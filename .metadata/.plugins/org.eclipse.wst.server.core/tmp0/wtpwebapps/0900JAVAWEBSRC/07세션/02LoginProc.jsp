<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sbean" class="Ch07.SaveSession" scope="application" />

<%
	//입력값 검증(DB에 저장된 정보와 일치여부 확인) -건너뜀
	
	//세션객체에 로그인 정보저장
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	
	session.setAttribute("idkey", id);
	session.setAttribute("pwkey",pw);
	session.setMaxInactiveInterval(120);
	
	//map에 세션정보 등록
	sbean.addSession(id, pw, session.getId());
	
	//페이지 이동(request새로 요청)
	response.sendRedirect("02Main.jsp");
%>

</body>
</html>
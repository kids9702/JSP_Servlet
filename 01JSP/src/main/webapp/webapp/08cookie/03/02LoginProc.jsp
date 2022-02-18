<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sbean" class="Ch07.SaveSession" scope="application" />

<%
	// 입력값 검증(DB에 저장된 정보와 일치여부 확인) - 생략
	
	// 세션 객체에 로그인 정보 저장
	
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	
	session.setAttribute("idkey", id);
	session.setAttribute("pwkey", pw);
	session.setMaxInactiveInterval(120);
	
	//map에 세션 정보 등록
	
	sbean.addSession(id, pw, session.getId());
	
	//쿠키 정보 저장
	String idchk = request.getParameter("idchk");
	String pwchk = request.getParameter("pwchk");
	if(id!=null){
		Cookie cid = new Cookie("idkey", id);
		cid.setPath("./");
		response.addCookie(cid);
	}
	if(pw!=null){
		Cookie cpw = new Cookie("pwkey", pw);
		cpw.setPath("./");
		response.addCookie(cpw);
	}
	
	//페이지 이동(request 새로 요청)
	
	response.sendRedirect("02Main.jsp");
	
%>
</body>
</html>
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
	//setPath() 클라이언트의 쿠키를 서버의 어느 위치에서 적용할건지를 결정
	// '/' 로 설정하면 현재 여기서 만든 모든 페이지에 클라이언트가 접근할 때 쿠키 적용
	//특정 URL로 지정한 경우는 해당 페이지에서만 사용할 수 있다.
	
	Cookie c1 = new Cookie("c1","value1");
	c1.setPath("/");

	Cookie c2 = new Cookie("c2","value2");
	c2.setPath("./");
	
	Cookie c3 = new Cookie("c3","value3");
	c3.setPath("/01JSP/08cookie/01/");
	
	response.addCookie(c1);
	response.addCookie(c2);
	response.addCookie(c3);

%>
<h1>쿠키 생성 페이지</h1>
쿠키 생성 완료!<br>
<a href="02result.jsp">쿠키 확인</a>


</body>
</html>
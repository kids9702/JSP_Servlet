<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- FORM
ServletFile : Loginproc1.jsp
URL : @WebServlet("/loginproc1.do")
로그인 요청시에 Console에 출력 (할 수 있으면 C03Main.jsp로도 내용 전달) 
-->
<form method="get" action="/loginproc1.do">
	ID : <input name="userid"><br>
	PW : <input type="password" name="pwd"><br>
	<input type="submit" value="로그인">
</form>

<!-- FORM
ServletFile : Loginproc2.jsp
URL : Web.xml에 등록 ("/loginproc2.do")
로그인 요청시에 Console에 출력 (할 수 있으면 C03Main.jsp로도 내용 전달)  
-->
<form method="post" action="/loginproc2.do">
	ID : <input name="userid"><br>
	PW : <input type="password" name="pwd"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>
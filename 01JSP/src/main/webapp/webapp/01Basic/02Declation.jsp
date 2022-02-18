<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 선언문의 값은 application이 종료되기 전까지 유지된다 -->

<%!
	int num = 0;
	public int addone(){
		num++;
		return num;
	}
	
%>

결과값 : <%=addone() %><br>

</body>
</html>
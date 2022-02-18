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
선언문 : JSP페이지 내에서 사용될 멤버 변수나 멤버 메서드를 선언할 수 있는 영역
 -->
 <%!
 	//멤버 변수 추가
 	String str = "Hello World";
 	//메서드 추가
 	public String func(){
 		System.out.println("메서드를 사용함");
 		return str;
 	}
 %>
 
 멤버변수 : <%=str %><br>
 메서드 사용 : <%=func() %><br>


</body>
</html>
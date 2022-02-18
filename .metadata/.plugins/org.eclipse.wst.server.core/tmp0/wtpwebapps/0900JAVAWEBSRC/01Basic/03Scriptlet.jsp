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
만들어지는 서블릿파일에서 Service 메서드 내에 저장되는 코드
변수 : 지역변수
메서드 : X
흐름제어문(for,if,switch)을 사용할 수있다 o 
 -->
 
 
 <%
 	String str1 = "Script 테스트";
	int a=0;
	a++; 
	//함수 생성불가!!
	//public int func1(){
	//	a++;
	//	return a; 
	//}
 %>
 str1 : <%=str1 %><br>
 a : <%=a %><br>
 
 

 
 
 
 
 
 

</body>
</html>
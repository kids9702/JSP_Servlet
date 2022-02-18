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
	String rmname = request.getParameter("name");
	String flag = request.getParameter("flag"); //current or global
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals(rmname)){ //삭제할 쿠키를 찾음
				cookies[i].setMaxAge(0);
				if(flag.equals("current")){					
					cookies[i].setPath("./");
				}
				else if(flag.equals("global")){
					cookies[i].setPath("/");
				}
				response.addCookie(cookies[i]);
			}
		}
	}
%>

<a href="02result.jsp">쿠키확인</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 오류 발생 시 -->
<%
	int num=Integer.parseInt(request.getParameter("num"));
	int div=Integer.parseInt(request.getParameter("div"));
	if(div==0){
	response.sendError(404,"잘못된 연산처리 요청입니다.");
	}
	else{
		out.println("결과 : " + num/div + "<br>");
	}
%>

</body>
</html>
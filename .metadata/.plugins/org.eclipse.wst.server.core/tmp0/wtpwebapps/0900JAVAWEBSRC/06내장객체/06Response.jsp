<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	
		int num = Integer.parseInt(request.getParameter("num"));
		int div = Integer.parseInt(request.getParameter("div"));
		if(div==0)
		{
			response.sendError(404,"잘못된 연산처리요청입니다");
		}else
		{
			out.println("결과 : " + num/div + "<br>");
		}
		
	%>
	
	
</body>
</html>



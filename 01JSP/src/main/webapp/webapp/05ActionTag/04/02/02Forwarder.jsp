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
	int type=Integer.parseInt(request.getParameter("type"));
	if(type==1){
		%>
			<jsp:forward page="Proc/AProc.jsp" />
		<%
	}
	else if(type==2){
		%>
			<jsp:forward page="Proc/BProc.jsp" />
		<%
	}
	else if(type==3){
		%>
			<jsp:forward page="Proc/CProc.jsp" />
		<%
	}
%>
</body>
</html>
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
	//String userid = request.getParameter("userid");
	//String pwd = request.getParameter("pwd");
	String type = request.getParameter("type");
	out.println("HEHEHEHEHE");
	
	if(type.equals("A")){
		%>
			<jsp:forward page="AType.jsp" >
			<jsp:param name="roles" value="admin" />
			</jsp:forward>
		<%
	}else if(type.equals("B")){
		%>
			<jsp:forward page="BType.jsp" >
			<jsp:param name="roles" value="users" />
			</jsp:forward>
		<%	
		
	}else if(type.equals("C")){
		%>
			<jsp:forward page="CType.jsp" >
			<jsp:param name="roles" value="anonymous" />
			</jsp:forward>
		<%
	}
%>

</body>
</html>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- B페이지에서 해야될 작업들을 기입 -->


<!-- CProc페이지로 Forwarding -->
<jsp:forward page="CProc.jsp" >
<jsp:param name="BProc" value="BContents" />
</jsp:forward>

</body>
</html>
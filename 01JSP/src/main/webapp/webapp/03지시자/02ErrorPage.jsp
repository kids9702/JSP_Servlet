<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
isErrorPage="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
에러발생!! <br>
<%=exception.toString() %><br>
<%=exception.getMessage() %>
</body>
</html>
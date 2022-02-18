<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="02Forwarder.jsp">
		<select name="type">
			<option value="1">A  -> B -> C</option>
			<option value="2">B -> C</option>
			<option value="3">C</option>
		</select>
		<input type="submit" value="전송">
	</form>

</body>
</html>
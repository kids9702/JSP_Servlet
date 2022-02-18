<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="01ForwardAction.jsp">
		ID : <input name="userid"><br>
		PW : <input name="pwd" type="password"><br>
		<select name="type">
			<option value="A">A Type</option>
			<option value="B">B Type</option>
			<option value="C">C Type</option>
		</select>
		<input type="submit" value="전송">
	</form>

</body>
</html>
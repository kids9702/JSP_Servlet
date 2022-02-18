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
Multipart
클라이언트가 웹 요청시 http 프로토콜의 바디에 데이터를 여러 부분으로 나눠 전송하는 방식
클라이언트가 웹서버에 파일을 업로드 요청시 http 프로토콜의 바디에 파일정보를 담아서 전송하게 되는데
파일을 한번에 여러개 전송하게 되면 바디 부분에 파일이 여러개로 나눠져서 연결되어 전송된다
-->

<form method="post" action="/C01Upload.do" enctype="multipart/form-data">
	파일선택 : <input type="file" name="TEST1"><br>
	<input type="submit" value="upload">
</form>

</body>
</html>




<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

<%
	Cookie[] cookies = request.getCookies();
	String id=null;
	String pw=null;
	String idchk=null;
	String pwchk=null;
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			System.out.println("name : " + cookies[i].getName());
			System.out.println("value : " + cookies[i].getValue());
			System.out.println();
			if(cookies[i].getName().equals("idkey")){
				id=cookies[i].getValue();
			}
			if(cookies[i].getName().equals("pwkey")){
				pw=cookies[i].getValue();
			}
			if(cookies[i].getName().equals("idchk")){
				idchk=cookies[i].getValue();
			}
			if(cookies[i].getName().equals("pwchk")){
				pwchk=cookies[i].getValue();
			}
			
		}
	}
%>

<form method="post" action="02LoginProc.jsp">
ID : <input name="userid" value="<%=id %>"><br>
PW : <input type="password" name="pwd"  value="<%=pw %>"><br>
<input type="checkbox" name="idchk">ID 저장<br>
<input type="checkbox" name="pwchk">PW 저장<br>
<input type="submit" value="로그인">

</form>

<script>
	var id='<%=id%>';
	var pw='<%=pw%>';
	var idchk='<%=idchk%>';
	var pwchk='<%=pwchk%>';
	if(idchk==('on')){
		%('#userid').val(id);
		%('#idchk').css('checked','true');
	}
	if(pwchk==('on')){
		%('#userpw').val(pw);
		%('#pwchk').css('checked','true');
	}

</script>

</body>
</html>
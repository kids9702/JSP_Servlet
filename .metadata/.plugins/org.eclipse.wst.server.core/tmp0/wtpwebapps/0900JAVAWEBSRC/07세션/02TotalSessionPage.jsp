<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="sbean" class="Ch07.SaveSession" scope="application" />
<%@page import="java.util.*,Ch07.Account" %>
<%
	Map<String,Account> list = sbean.getSession();

	Set<String> set = list.keySet();

	Iterator iter = set.iterator();
	
	while(iter.hasNext()){
		String key = (String)iter.next();	//Key를 하나씩 꺼냄
		Account tmp = list.get(key);		//Key에 해당되는 Account를 하나씩 꺼냄
		out.println("SID : "+tmp.getSid()+" ");	//Account의 속성 SID를 출력
		out.println("ID : "+tmp.getId()+" ");	//Account의 속성 ID를 출력	
		out.println("PW : "+tmp.getPw()+" ");	//Account의 속성 PW를 출력
		out.println("<br>");	 
		
	}
%>

</body>
</html>
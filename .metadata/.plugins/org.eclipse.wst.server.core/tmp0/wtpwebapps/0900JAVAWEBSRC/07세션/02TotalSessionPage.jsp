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
		String key = (String)iter.next();	//Key�� �ϳ��� ����
		Account tmp = list.get(key);		//Key�� �ش�Ǵ� Account�� �ϳ��� ����
		out.println("SID : "+tmp.getSid()+" ");	//Account�� �Ӽ� SID�� ���
		out.println("ID : "+tmp.getId()+" ");	//Account�� �Ӽ� ID�� ���	
		out.println("PW : "+tmp.getPw()+" ");	//Account�� �Ӽ� PW�� ���
		out.println("<br>");	 
		
	}
%>

</body>
</html>
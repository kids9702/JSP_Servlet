<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>����Ȯ��������</h1>
	<%
		String id = (String)session.getAttribute("idkey");
		String pw = (String)session.getAttribute("pwkey");
	%>
	
����ID : <%=session.getId() %><br>
����ID : <%=id %><br>
����PW : <%=pw %><br>
�����ð� : <%=session.getMaxInactiveInterval() %><br>
����ð� : <%=session.getCreationTime() %><br>
<!--  
getCreationTime()
1970�� 1�� 1�� 0�� 0�ʸ� �������� ���� ������ ������ �ð����� ����� �ð��� 1/1000�� ������ ����
-->
</body>
</html>
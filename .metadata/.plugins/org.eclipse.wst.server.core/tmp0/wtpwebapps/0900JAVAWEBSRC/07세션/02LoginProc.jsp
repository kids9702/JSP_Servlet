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

<%
	//�Է°� ����(DB�� ����� ������ ��ġ���� Ȯ��) -�ǳʶ�
	
	//���ǰ�ü�� �α��� ��������
	String id = request.getParameter("userid");
	String pw = request.getParameter("pwd");
	
	session.setAttribute("idkey", id);
	session.setAttribute("pwkey",pw);
	session.setMaxInactiveInterval(120);
	
	//map�� �������� ���
	sbean.addSession(id, pw, session.getId());
	
	//������ �̵�(request���� ��û)
	response.sendRedirect("02Main.jsp");
%>

</body>
</html>
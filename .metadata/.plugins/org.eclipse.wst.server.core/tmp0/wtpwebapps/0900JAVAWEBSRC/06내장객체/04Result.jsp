<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- memBean빈객체 생성 -->
<jsp:useBean id="memBean" class="Ch05.C02Member" scope="page" />
<!-- memBean빈객체 02MemberJoin에서 전달된 파라미터값 저장 -->
<jsp:setProperty name="memBean" property="*" /> 
<%
	out.print(memBean.toString());
%>
<!-- 파일에저장 -->
<%@page import="java.io.*,java.util.*" %>
<%
	//디렉토리 생성
	File dirpath = new File("c:\\JSPTMP"); //File클래스로 파일경로설정
	if(dirpath.exists()==false) //해당경로가 없다면
	{
		dirpath.mkdirs(); //디렉토리 생성
	}
	
	//파일생성
	Date date = new Date();	//현재 날짜정보 
	Writer fout = new FileWriter("c:\\JSPTMP\\Memberlist.txt",true);
	fout.write(memBean.toString()+"\n");
	
	fout.flush();
	fout.close();
%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,javax.sql.*,javax.naming.*" %>
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs = null;
	
	try{
	Context initCtx = new InitialContext();
	Context envCtx = (Context)initCtx.lookup("java:comp/env");
	DataSource ds = (DataSource)envCtx.lookup("jdbc/MysqlDB");
	conn = ds.getConnection();
	
	//Select
	pstmt = conn.prepareStatement("select * from std_tbl");
	rs = pstmt.executeQuery();
	
	if(rs!=null)
	{
		while(rs.next())
		{
			out.print(rs.getInt("id")+" | "+rs.getString("name")+" | "+rs.getString("phone")+"<br>");
		}
	}
	
	
	
	}catch(Exception e){
		e.printStackTrace();
	}
	//finally를 하지 않아도.. 알아서 conn객체 연결 해제~
	


%>

</body>
</html>
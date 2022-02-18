<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*,javax.sql.*,javax.naming.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/MysqlDB");
		conn = ds.getConnection();
		pstmt = conn.prepareStatement("select * from std_tbl");
		rs = pstmt.executeQuery();
		
		out.println("<h3>연결되었습니다.</h3>");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		conn.close();
	}
%>

</body>
</html>
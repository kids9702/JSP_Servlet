<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@page import="java.sql.*" %>
	
	<%	
	
    	String url = "jdbc:mysql://127.0.0.1:3330/shopdb";
    	String id = "root";
    	String pw= "1234";
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,id,pw);
			pstmt=conn.prepareStatement("select * from board_tbl");
			rs=pstmt.executeQuery();
			%>
				<table class="table w-75" style="margin:10px auto">
			<%
			if(rs!=null)
			{
				while(rs.next()){
					
					%>
						<tr>
							<td><%=rs.getInt("num") %></td>
							<td><%=rs.getString("email") %></td>
							<td><%=rs.getString("subject") %></td>
							<td><%=rs.getString("content") %></td>
						</tr>
					<%
				}
			}
			%>
				</table>
			<%
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			
		}
	%>

</body>
</html>
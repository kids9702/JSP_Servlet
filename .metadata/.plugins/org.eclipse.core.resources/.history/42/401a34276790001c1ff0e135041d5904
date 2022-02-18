package Ch01;

import java.sql.*;

public class C02Select {

	public static void main(String[] args) {
		
		String url = "jdbc:mysql://localhost:3330/sqldb";
		String id = "root";
		String pw = "1234";
		String sql = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(url,id,pw);
			System.out.println("DB connected");
			
			sql="select * from buytbl";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			System.out.println("num\tuserid\tprodname\tgroupname\tprice\tamount\n");
			if(rs!=null) {
				while(rs.next()) {
					System.out.print(rs.getInt("num") + "\t");
					System.out.print(rs.getString("userid") + "\t");
					System.out.print(rs.getString("prodname") + "\t\t");
					System.out.print(rs.getString("groupname") + "\t\t");
					System.out.print(rs.getInt("price") + "\t");
					System.out.print(rs.getInt("amount") + "\n");
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			//rs 제거
			try{rs.close();}catch(Exception e) {}
			//pstmt 제거
			try{pstmt.close();}catch(Exception e) {}
			//conn 제거
			try{conn.close();}catch(Exception e) {}
		}

	}

}

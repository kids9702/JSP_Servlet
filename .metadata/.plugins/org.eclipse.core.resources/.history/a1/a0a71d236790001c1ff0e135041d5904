package Ch01;

import java.sql.*;

public class C01DBConn {

	public static void main(String[] args) {

		//연결정보 저장
		String url="jdbc:mysql://localhost:3330/sqldb";
		String id="root";
		String pw="1234";
		String sql=null;
		
		//SQL 참조변수
		Connection conn = null;				// DB 연결 객체 연결용 참조변수
		PreparedStatement pstmt = null;		// SQL 쿼리 전달용 객체 참조변수
		ResultSet rs = null;				// SQL Select 조회 결과 저장 참조변수
		
		try {
			//DBMS 드라이브 적재
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Loading Success");
			
			//DB 연결
			conn=DriverManager.getConnection(url,id,pw);
			System.out.println("DB Connected");
			
			sql="select userid, name from usertbl"; //쿼리문 준비
			pstmt=conn.prepareStatement(sql);		//쿼리 객체 생성
			rs=pstmt.executeQuery();				//쿼리 전송 후 결과를 rs로 받음
			
			System.out.println("userid\tname\n");
			if(rs!=null) {
				while(rs.next()) {
					System.out.print(rs.getString("userid")+"\t");
					System.out.print(rs.getString("name")+"\n");
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

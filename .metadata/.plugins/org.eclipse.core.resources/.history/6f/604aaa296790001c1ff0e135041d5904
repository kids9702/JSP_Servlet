package Ch01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class C03CRUD {

	public static void main(String[] args) {
	
		// 시작
		String url = "jdbc:mysql://localhost:3330/shopdb";
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
			
			//쿼리 전송(INSERT)
			// value ? 지정시 pstmt에서 값 입력 가능
//			 sql="insert into std_tbl values(?,?,?)";
//			 pstmt=conn.prepareStatement(sql);
			
//			 //pstmt.set(?의 순번, 값)
//			 pstmt.setInt(1,1010);
//			 pstmt.setString(2, "홍길동");
//			 pstmt.setString(3, "010-222-3333");
			
//			 //쿼리전송(insert, update, delete)
//			 int result = pstmt.executeUpdate();
//			 System.out.println("result : " + result);
			
//			 if(result==0) {
//			 System.out.println("INSERT 실패");
//			 }
//			 else {
//			 System.out.println("INSERT 성공");
//			 }
			 

			//쿼리 전송(UPDATE)
			
//			sql="update std_tbl set name =? where id=?";
//			pstmt=conn.prepareStatement(sql);
//			
//			//pstmt.set(?의 순번, 값)
//			pstmt.setString(1,"정우균");
//			pstmt.setInt(2, 1010);
//			
//			//쿼리 전송(insert, update, delete)
//			int result = pstmt.executeUpdate();
//			System.out.println("result : " + result);
//			if(result==0) {
//				System.out.println("UPDATE 실패");
//			}else {
//				System.out.println("UPDATE 성공");
//			}
			 
			
			//쿼리 전송(DELETE)
			sql="delete from std_tbl where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, 1010);
			
			int result = pstmt.executeUpdate();
			System.out.println("result : " + result);
			if(result==0) {
				System.out.println("DELETE 실패");
			}else {
				System.out.println("DELETE 성공");
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			//pstmt 제거
			try{pstmt.close();}catch(Exception e) {}
			//conn 제거
			try{conn.close();}catch(Exception e) {}
		}
		// 끝
	}

}

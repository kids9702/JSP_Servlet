package Ch01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class C04연습문제2 {
	public static void main(String[] args) {
		//1 sqldb.buytbl에서  amount가 10이상인 행의 정보만 Select 해서 Console에 출력
		//2 sqldb.buytbl에서 운동화를 구매한 KBS의 amount를 10으로 변경
		//3 sqldb.buytbl에서 KBS가 책을 3권 구매한 정보를 INSERT
		//4 BBK가 구매한 행을 삭제
		
		
		//시작
		String url="jdbc:mysql://localhost:3330/sqldb";
		String id="root";
		String pw="1234";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			//드라이브 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			//DB연결객체
			conn=DriverManager.getConnection(url,id,pw);
			//쿼리객체
			System.out.println("------------SELECT-----------");
			String sql="select * from buytbl where amount>=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, 5);
			//쿼리전송
			rs=pstmt.executeQuery();
			//결과확인
			if(rs!=null)
			{
				while(rs.next())
				{
					System.out.print(rs.getInt("num")+"\t");
					System.out.print(rs.getString("userid")+"\t");
					System.out.print(rs.getString("prodname")+"\t");
					System.out.print(rs.getInt("amount")+"\n");				
				}
			}
			System.out.println("------------UPDATE-----------");
			sql="update buytbl set amount=? where userid=? and prodname=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, 30);
			pstmt.setString(2, "KBS");
			pstmt.setString(3, "운동화");
			int result=pstmt.executeUpdate();
			if(result!=0) {
				System.out.println("UPDATE 성공");
			}else {
				System.out.println("UPDATE 실패");
			}
			System.out.println("------------INSERT-----------");
			
			//3 sqldb.buytbl에서 KBS가 책을 3권 구매한 정보를 INSERT
			
//			sql="insert into buytbl values(null,?,?,?,?,?)";
//			pstmt=conn.prepareStatement(sql);
//			pstmt.setString(1, "KBS");
//			pstmt.setString(2, "책");
//			pstmt.setString(3, "서적");
//			pstmt.setInt(4, 20);
//			pstmt.setInt(5, 3);
//			result=pstmt.executeUpdate();
//			if(result!=0) {
//				System.out.println("INSERT 성공");
//			}else {
//				System.out.println("INSERT 실패");
//			}
//			
			//4 BBK가 구매한 행을 삭제
			System.out.println("------------DELETE-----------");
			sql="delete from buytbl where userid='BBK'";
			pstmt=conn.prepareStatement(sql);
			result=pstmt.executeUpdate();
			if(result!=0) {
				System.out.println("DELETE 성공");
			}else {
				System.out.println("DELETE 실패");
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			//rs제거
			try{rs.close();}catch(Exception e) {}
			//pstmt제거
			try{pstmt.close();}catch(Exception e) {}
			//conn제거
			try{conn.close();}catch(Exception e) {}
			
		}
		
		
		//끝

	}

}

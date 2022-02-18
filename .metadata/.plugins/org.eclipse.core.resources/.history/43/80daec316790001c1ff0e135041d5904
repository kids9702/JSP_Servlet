package Ch02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class DBConnMgr {
	String url = "jdbc:mysql://localhost:3330/shopdb";
	String id = "root";
	String pw = "1234";
	Vector<StdDTO> list = new Vector();
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public DBConnMgr() {
		//드라이브 로드
		//DB 연결	
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Loading Success");
			conn=DriverManager.getConnection(url,id,pw);
			System.out.println("DB Connected");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	//Insert 처리 함수
	public int InsertFunc(String name, String phone) {
		int result = 0;
		try{
			String sql="insert into std_tbl values(null,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			result = pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}
	//Update 처리 함수
	public int UpdateFunc(int id, String name, String phone) {
		int result = 0;
		try {
			pstmt=conn.prepareStatement("update std_tbl set name=?,phone? where id=?");
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			pstmt.setInt(3, id);
			result=pstmt.executeUpdate();
			if(result!=0) {
				System.out.println("UPDATE 완료");
			}else {
				System.out.println("UPDATE 실패");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {pstmt.close();}catch(Exception e){}
		}
		
		return result;
	}
	//Delete 처리 함수
	public int DeleteFunc(int id) {
		int result = 0;
		try {
			pstmt=conn.prepareStatement("delete from std_tbl where id=?");
			pstmt.setInt(1, id);
			result=pstmt.executeUpdate();
			if(result!=0) {
				System.out.println("DELETE 성공");
			}else {
				System.out.println("DELETE 실패");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {pstmt.close();}catch(Exception e){}
		}
		
		return result;
	}
	//Select 처리 함수
	public Vector<StdDTO> SelectFunc(){
		try {
			pstmt=conn.prepareStatement("select * from std_tbl");
			rs=pstmt.executeQuery();
			if(rs!=null) {
				while(rs.next()) {
					StdDTO dto = new StdDTO();
					dto.setId(rs.getInt("id"));
					dto.setName(rs.getString("name"));
					dto.setPhone(rs.getString("phone"));
					list.add(dto);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
			}catch(Exception e){}
		}
		return list;
	}
	
//	public static void main(String[] args) {
//		DBConnMgr tmp = new DBConnMgr();
//		for(int i=0;i<1000;i++) {
//			tmp.InsertFunc("TEST"+i,"010-222-333"+i);
//		}
//	}
	//쿼리 전송
	//결과 처리
}

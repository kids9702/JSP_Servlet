package Ch03;

import java.sql.*;
import java.util.Vector;

public class StdDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs = null;
	Vector<StdDTO> list = new Vector();
	
	private DBConnectionMgr pool = null;
	
	public StdDAO() {
		try {
			pool=DBConnectionMgr.getInstance();	
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public int InsertFunc(String name, String phone) {
		int result=0;
		try {
			conn=pool.getConnection();
			pstmt=conn.prepareStatement("insert into std_tbl values(null,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			pstmt.executeUpdate();
			if(result!=0) {
				System.out.println(("INSERT 성공(POOL사용)"));
			}else {
				System.out.println(("INSERT 실패(POOL사용)"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return result;
	}
	public int UpdateFunc(int id, String name, String phone) {
		int result=0;
		try {
			conn=pool.getConnection();
			pstmt=conn.prepareStatement("update std_tbl set name=?, phone=? where id=?");
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			pstmt.setInt(3, id);
			result=pstmt.executeUpdate();
			if(result!=0) {
				System.out.println("UPDATE 완료(POOL 사용)");
			}else {
				System.out.println("UPDATE 실패(POOL 사용)");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return result;
	}
	public int DeleteFunc(int id) {
		int result=0;
		try {
			conn=pool.getConnection();
			pstmt=conn.prepareStatement("delete from std_tbl where id=?");
			pstmt.setInt(1, id);
			result=pstmt.executeUpdate();
			if(result!=0) {
				System.out.println("DELETE 성공(POOL 사용)");
			}else {
				System.out.println("DELETE 실패(POOL 사용)");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return result;
	}
	
	public Vector<StdDTO> SelectFunc(){
		try {
			conn=pool.getConnection();
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
			pool.freeConnection(conn,pstmt);
		}
		return list;
	}
}

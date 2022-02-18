package board;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class InsertSampleDate {

	public static void main(String[] args) {
		DBConnectionMgr pool = DBConnectionMgr.getInstance();
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			for(int i=1; i<1000; i++) {
			sql="insert into BoardTbl(name,subject,content,regdate,pass,ip,count)";
			sql+=" values('aaa"+i+"','bbb"+i+"','ccc"+i+"',now(),'1234','127.0.0.1',0);";
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
		}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(con,pstmt);
		}


	}
}

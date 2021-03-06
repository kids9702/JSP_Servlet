package board;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.PageContext;


public class BoardMgr {

	private DBConnectionMgr pool;

	public BoardMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	public int getTotalCount() {
		//완성하기
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			conn = pool.getConnection();
			pstmt = conn.prepareStatement("select count(*) from boardtbl ");
			rs = pstmt.executeQuery();
			if(rs!=null) {
				while(rs.next()) {
					cnt = rs.getInt(1);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return cnt;
		
	}

	public Vector<BoardBean> getBoardList(int start, int end)
	{
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		Vector<BoardBean> list = new Vector();
		//완성하기
		try {
			conn=pool.getConnection();
			pstmt=conn.prepareStatement("select * from boardtbl order by num desc limit ?,?");
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					BoardBean bean = new BoardBean(
							rs.getInt("num"),
							rs.getString("name"),
							rs.getString("subject"),
							rs.getString("content"),
							rs.getString("regdate"),
							rs.getString("pass"),
							rs.getString("ip"),
							rs.getInt("count")
					);
					list.add(bean);
				}
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return list;
		
	}
	public void upCount(int num) {
		//완성하기
		Connection conn=null;
		PreparedStatement pstmt = null;
		try {
			conn = pool.getConnection();
			pstmt=conn.prepareStatement("update boardtbl set count=count+1 where num=?");
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
	}	
	

	public BoardBean getBoard(int num) {
		//완성하기
		upCount(num);
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardBean bean = null;
		try {
			conn=pool.getConnection();
			pstmt = conn.prepareStatement("select * from board_tbl where num=?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs!=null)
			{
				while(rs.next()) {
					bean=new BoardBean(
							rs.getInt("num"),
							rs.getString("name"),
							rs.getString("subject"),
							rs.getString("content"),
							rs.getString("regdate"),
							rs.getString("pass"),
							rs.getString("ip"),
							rs.getInt("count")
							);
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
		return bean;
	}
	

	public void insertBoard(HttpServletRequest req) throws IOException, ServletException {
		//완성하기
		Connection conn=null;
		PreparedStatement pstmt = null;
		
		try {
			conn=pool.getConnection();
			pstmt=conn.prepareStatement("insert into boardtbl values(null,?,?,?,now(),?,?,0)");
			pstmt.setString(1, req.getParameter("name"));
			pstmt.setString(2, req.getParameter("subject"));
			pstmt.setString(3, req.getParameter("content"));
			pstmt.setString(4, req.getParameter("regdate"));
			pstmt.setString(5, req.getParameter("pass"));
			pstmt.setString(6, req.getParameter("ip"));
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
	}

	public void updateBoard(BoardBean bean) {
		//완성하기
		Connection conn=null;
		PreparedStatement pstmt = null;
		
		try {
			conn=pool.getConnection();
			pstmt=conn.prepareStatement("update boardtbl set subject=?,content=? where num=?");
			pstmt.setString(1, bean.getSubject());
			pstmt.setString(2, bean.getContent());
			pstmt.setInt(3, bean.getNum());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}
	}
	 
	public static void main(String[] args) {
		new BoardMgr();
		
		System.out.println("SUCCESS");
	}
}
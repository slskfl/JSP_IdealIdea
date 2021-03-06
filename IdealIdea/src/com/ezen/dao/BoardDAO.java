package com.ezen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ezen.dto.BoardVO;

import util.DBManager;

public class BoardDAO {
private BoardDAO() {}
	
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	
	public List<BoardVO> selectAllBoard(String boardname) {
		List<BoardVO> list=new ArrayList<BoardVO>();
		BoardVO boardVO = null; 
		System.out.println("selectAllBoard()가 호출되었습니다.");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="select * from "+ boardname;
		
		try {
			conn=DBManager.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
	
			while(rs.next()) {
				boardVO=new BoardVO();
				
				boardVO.setNum(rs.getInt("num"));
				boardVO.setName(rs.getString("name"));
				boardVO.setEmail(rs.getString("email"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadCount(rs.getInt("readCount"));
				boardVO.setWritedate(rs.getTimestamp("writedate"));
				list.add(boardVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
	}
	
	public List<BoardVO> selectSixBoard(String boardname) {
		List<BoardVO> list=new ArrayList<BoardVO>();
		BoardVO boardVO = null; 
		System.out.println("selectSixBoard()가 호출되었습니다.");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="select * from (select * from "+ boardname +" order by num desc) where rownum<=6";
		
		try {
			conn=DBManager.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				boardVO=new BoardVO();
				boardVO.setNum(rs.getInt("num"));
				boardVO.setName(rs.getString("name"));
				boardVO.setEmail(rs.getString("email"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadCount(rs.getInt("readCount"));
				boardVO.setWritedate(rs.getTimestamp("writedate"));
				list.add(boardVO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		
		return list;
	}



	public void insertBoard(BoardVO boardVO, String boardname) {
		// TODO Auto-generated method stub
		System.out.println("insertBoard(글쓰기 정보 입력)");
		String sql="insert into "+ boardname +"(num, name, email, title, content)"
				+ " values (board_seq.nextval, ?, ?, ?, ?) ";
		Connection conn=null;
		PreparedStatement pstmt=null; 
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getName());
			pstmt.setString(2, boardVO.getEmail());
			pstmt.setString(3, boardVO.getTitle());
			pstmt.setString(4, boardVO.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}


	public void updateReadCount(int num, String boardname) {
		// TODO Auto-generated method stub
		String sql="update "+ boardname +" set readCount=readCount+1 "
				+ "where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}


	public BoardVO selectOneBoardByNum(int num, String boardname) {
		// TODO Auto-generated method stub
		
		System.out.println("selectOneBoardByNum("+num+") 이 호출되었습니다." );
		String sql = "select * from "+ boardname +" where num=?";
		BoardVO boardVO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				boardVO=new BoardVO();
				boardVO.setNum(rs.getInt("num"));
				boardVO.setName(rs.getString("name"));
				boardVO.setEmail(rs.getString("email"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadCount(rs.getInt("readCount"));
				boardVO.setWritedate(rs.getTimestamp("writedate"));
				boardVO.setFileName(rs.getString("file"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return boardVO;
	}

	public void updateBoard(BoardVO boardVO, String boardname) {
		// TODO Auto-generated method stub
		String sql="update "+ boardname +" set name=?, email=?, title=?, content=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getName());
			pstmt.setString(2, boardVO.getEmail());
			pstmt.setString(3, boardVO.getTitle());
			pstmt.setString(4, boardVO.getContent());
			pstmt.setInt(5, boardVO.getNum());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}


	public void deleteBoard(int num, String boardname) {
		// TODO Auto-generated method stub
		String sql = "delete from "+ boardname +" where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try { 
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		}catch (Exception e) { 
			e.printStackTrace(); 
		}
	}

}

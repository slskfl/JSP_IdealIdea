package com.ezen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ezen.dto.MemberVO;

import util.DBManager;

public class MemberDAO {
private MemberDAO() {}
	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	//회원가입
	public void insertMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		String sql="insert into members values (?, ?, ?, ?, ?, ?, ?) ";
		Connection conn=null;
		PreparedStatement pstmt=null; 
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getUserId());
			pstmt.setString(2, memberVO.getName());
			pstmt.setString(3, memberVO.getPw());
			pstmt.setString(4, memberVO.getTel());
			pstmt.setString(5, memberVO.getEmail());
			pstmt.setString(6, memberVO.getAddress());
			pstmt.setInt(7, memberVO.getGrade());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	//아이디 중복 체크
	public int confirmID(String userid) {
		// TODO Auto-generated method stub
		int result=-1;
		String sql="select id from members where id=?";
		System.out.println("confirmID 호출 : " +userid);
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			if(rs.next()){
				result=1; //아이디 사용 중
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}

	//로그인 (아이디랑 비밀번호 확인)
	public int userCheck(String userid, String pw) {
		// TODO Auto-generated method stub
		int result=-1;
		String sql = "select pw from members where id=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn=DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("pw")!=null&&rs.getString("pw").equals(pw)) {
					result=1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		
		return result;
	}

	//로그인 성공 시 아이디에 대한 정보 이용하기 위함
	public MemberVO getMember(String userid) {
		// TODO Auto-generated method stub
		MemberVO memberVO = null; 
		String sql = "select * from members where id=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		System.out.println("getMember 호출 : " +userid);

		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				memberVO=new MemberVO();
				memberVO.setUserId(rs.getString("id"));
				memberVO.setName(rs.getString("name"));
				memberVO.setPw(rs.getString("pw"));
				memberVO.setTel(rs.getString("tel"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setAddress(rs.getString("address"));
				memberVO.setGrade(rs.getInt("grade"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt, rs);
		}
		return memberVO;
	}
	//회원정보 수정
	public void updateMember(MemberVO memberVO) {
		// TODO Auto-generated method stub
		String sql="update members set name=?, pw=?, tel=?, "
				+ "email=?, address=?, grade=? where id=? ";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getName());
			pstmt.setString(2, memberVO.getPw());
			pstmt.setString(3, memberVO.getTel());
			pstmt.setString(4, memberVO.getEmail());
			pstmt.setString(5, memberVO.getAddress());
			pstmt.setInt(6, memberVO.getGrade());
			pstmt.setString(7, memberVO.getUserId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public int getUserGrade(String userid) {
		// TODO Auto-generated method stub
		int grade=1;
		String sql="select grade from members where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn=DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				grade=rs.getInt("grade");	
				}
			System.out.println("getUserGrade 호출 : " +grade);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return grade;
	}
	
}

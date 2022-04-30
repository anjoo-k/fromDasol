package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.CartDto;
import dto.LessonDto;
import dto.SignupDto;
import mysql.db.DbConnect;

public class SignupDao {

	DbConnect db=new DbConnect();
	
	//[이다솔]나의 클래스 : 로그인 중인 사용자의 결제된 클래스 조회하기
	public List<LessonDto> getSignupLesson(String mnum) {
		
		List<LessonDto> list=new ArrayList<LessonDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		String sql="select l.lnum, l.title, l.photo from lesson l,signup s where s.lnum=l.lnum and s.mnum=?";
		
		try {
			psmt=conn.prepareStatement(sql);
			
			//바인딩
			psmt.setString(1, mnum);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				LessonDto dto=new LessonDto();
				
				dto.setLnum(rs.getString("lnum"));
				dto.setTitle(rs.getString("title"));
				dto.setPhoto(rs.getString("photo"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, psmt, conn);
		}
		
		return list;
	}
	
	//[조아라] 장바구니 결제하기 누르면 상품담기
	public void insertSignup(SignupDto dto)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into signup values (null,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLnum());
			pstmt.setString(2, dto.getMnum());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
}

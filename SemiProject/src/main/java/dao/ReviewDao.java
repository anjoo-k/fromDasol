package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.ReviewDto;
import mysql.db.DbConnect;

public class ReviewDao {

	DbConnect db=new DbConnect();
	
	//[이다솔]로그인 중인 회원의 리뷰목록 조회
	public List<ReviewDto> getMyReview(String mnum) {
		
		List<ReviewDto> list=new ArrayList<ReviewDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		String sql="select r.rnum, r.lnum, r.rstar, r.rcontents, r.rday from lesson l,review r where r.mnum=? and r.lnum=l.lnum";
		
		try {
			psmt=conn.prepareStatement(sql);
			
			//바인딩
			psmt.setString(1, mnum);
			
			rs=psmt.executeQuery();
			
			while(rs.next()) {
				ReviewDto dto=new ReviewDto();
				
				dto.setRnum(rs.getString("rnum"));
				dto.setLnum(rs.getString("lnum"));
				dto.setRstar(rs.getInt("rstar"));
				dto.setRcontents(rs.getString("rcontents"));
				dto.setRday(rs.getTimestamp("rday"));
				
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
	
	//[이다솔] 리뷰삭제메서드
	public void reviewDelete(String rnum) {
		
		Connection conn=db.getConnection();
		PreparedStatement psmt=null;
		
		String sql="delete from review where rnum=?";
		
		try {
			psmt=conn.prepareStatement(sql);
			psmt.setString(1, rnum);
			psmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(psmt, conn);
		}
		
	}
	
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

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
	
	// [신지환] 리뷰등록
	public void insertReview(ReviewDto dto)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		// lnum,mnum,rstar,rcontents
		String sql = "insert into review values (null,?,?,?,?,now())";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLnum());
			pstmt.setString(2, dto.getMnum());
			pstmt.setString(3, Integer.toString(dto.getRstar()));
			pstmt.setString(4, dto.getRcontents());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	// [신지환] 리뷰 수정
	public void updateReview(ReviewDto dto)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
	
		String sql = "update review set lnum=?,mnum=?,rstar=?,rcontents=?,rday=now() where rnum=?";
	
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLnum());
			pstmt.setString(2, dto.getMnum());
			pstmt.setInt(3, dto.getRstar());
			pstmt.setString(4, dto.getRcontents());
			pstmt.setString(5, dto.getRnum());
		
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	
	}	
	
	// [신지환] 해당 클래스 리뷰목록 가져오기
	public List<ReviewDto> getAllReview(String lnum)
	{
		List<ReviewDto> list = new Vector<ReviewDto>();
		ReviewDto dto = new ReviewDto();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from review where lnum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lnum);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setRnum(rs.getString("rnum"));
				dto.setLnum(rs.getString("lnum"));
				dto.setMnum(rs.getString("mnum"));
				dto.setRstar(rs.getInt("rstar"));
				dto.setRcontents(rs.getString("rcontents"));
				dto.setRday(rs.getTimestamp("rday"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	// [신지환] 총 리뷰 갯수
	public int getTotalCount(String lnum)
	{
		int n = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select count(*) from review where lnum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lnum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				n = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return n;
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
	
	// [신지환] 평균 별점 반환
	// 일단은 정수형으로
	public int getAvgRstar(String lnum)
	{
		int avgStar = 0;
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select avg(rstar) from review where lnum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lnum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				avgStar = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return avgStar;
	}
	
	// 해당 리뷰 데이터 가져오기
	public ReviewDto getReview(String rnum)
	{
		ReviewDto dto = new ReviewDto();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from review where rnum=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rnum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setRnum(rnum);
				dto.setLnum(rs.getString("lnum"));
				dto.setMnum(rs.getString("mnum"));
				dto.setRstar(rs.getInt("rstar"));
				dto.setRcontents(rs.getString("rcontents"));
				dto.setRday(rs.getTimestamp("rday"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return dto;
	}
	
}

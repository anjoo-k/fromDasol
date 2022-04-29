package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;

import com.mysql.cj.protocol.Resultset;

import dto.LessonDto;
import mysql.db.DbConnect;

public class LessonDao {

	DbConnect db = new DbConnect();
	
	//insert
	public void insertLesson(LessonDto dto)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into lesson values(null,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getTutor());
			pstmt.setString(3, dto.getCategory());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setString(5, dto.getIntro());
			pstmt.setString(6, dto.getPhoto());
			pstmt.setTimestamp(7, dto.getRegistday());
			pstmt.setInt(8, dto.getPerson());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	//select...전체데이터
	public List<LessonDto> getAllDatas()
	{
		List<LessonDto> list = new Vector<LessonDto>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from lesson order by lnum";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				LessonDto dto = new LessonDto();
				
				dto.setLnum(rs.getString("lnum"));
				dto.setTitle(rs.getString("title"));
				dto.setTutor(rs.getString("tutor"));
				dto.setCategory(rs.getString("category"));
				dto.setPrice(rs.getInt("price"));
				dto.setIntro(rs.getString("intro"));
				dto.setPhoto(rs.getString("photo"));
				dto.setRegistday(rs.getTimestamp("registday"));
				dto.setPerson(rs.getInt("person"));
				
				//list 추가
				list.add(dto);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
	
	
	//카테고리 데이터 가져오기
	public List<LessonDto> getCategoryData(String category)
	{
		List<LessonDto> list = new Vector<LessonDto>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from lesson where category=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs=pstmt.executeQuery();
				
			while(rs.next())
			{
				LessonDto dto = new LessonDto();
				
				dto.setLnum(rs.getString("lnum"));
				dto.setTitle(rs.getString("title"));
				dto.setTutor(rs.getString("tutor"));
				dto.setCategory(rs.getString("category"));
				dto.setPrice(rs.getInt("price"));
				dto.setIntro(rs.getString("intro"));
				dto.setPhoto(rs.getString("photo"));
				dto.setRegistday(rs.getTimestamp("registday"));
				dto.setPerson(rs.getInt("person"));
					
				//list 추가
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
	
	
	//상세페이지 데이터 가져오기
	public LessonDto getData(String lnum)
	{
		LessonDto dto=new LessonDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from lesson where lnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, lnum);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				dto.setLnum(rs.getString("lnum"));
				dto.setTitle(rs.getString("title"));
				dto.setTutor(rs.getString("tutor"));
				dto.setCategory(rs.getString("category"));
				dto.setPrice(rs.getInt("price"));
				dto.setIntro(rs.getString("intro"));
				dto.setPhoto(rs.getString("photo"));
				dto.setRegistday(rs.getTimestamp("registday"));
				dto.setPerson(rs.getInt("person"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
	
	// 중복클래스 체크
	public boolean checkClass(String lnum, String mnum)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from cart where lnum=? and mnum=?";
		boolean flag = false;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lnum);
			pstmt.setString(2, mnum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return flag;
	}
	
	// 장바구니 담기
	public void insertCart(String lnum, String mnum)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into cart values (null,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, lnum);
			pstmt.setString(2, mnum);
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//장바구니 출력
	//넘기는 값 email
	public List<HashMap<String, String>> getCartList(String email)
	{
		List<HashMap<String, String>> list = new ArrayList<HashMap<String,String>>();
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql="select c.cnum, l.title, l.lnum, l.photo, l.price "
				+ "from cart c,lesson l,member m "
				+ "where c.lnum=l.lnum and c.mnum=m.mnum and m.email=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, email);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				HashMap<String, String> map = new HashMap<String, String>();
				
				map.put("cnum", rs.getString("cnum"));
				map.put("title", rs.getString("title"));
				map.put("lnum", rs.getString("lnum"));
				map.put("photo", rs.getString("photo"));
				map.put("price", rs.getString("price"));
				
				//list에 추가
				list.add(map);				
			}	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return list;
	}
	
	
	//장바구니 삭제
	public void deleteCart(String cnum)
	{
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from cart where cnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cnum);
			pstmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	
	
}
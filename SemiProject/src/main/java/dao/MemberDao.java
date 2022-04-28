package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.MemberDto;
import mysql.db.DbConnect;

public class MemberDao {

	DbConnect db = new DbConnect();
	
	//이메일체크
	public boolean isemailCheck(String email)
	{
		boolean b=false;
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
			
		String sql="select * from member where email=?";
			
		try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, email);
			
				rs=pstmt.executeQuery();
				
				if(rs.next())
				{
					b=true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			return b;
		}

		
	//member insert
	public void insertMember(MemberDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
				
		String sql="insert into member values(null,?,?,?,now())";
				
		try {
				pstmt=conn.prepareStatement(sql);
					
				pstmt.setString(1, dto.getName());
				pstmt.setString(2, dto.getEmail());
				pstmt.setString(3, dto.getPassword());
					
				pstmt.execute();
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
			}
				
	}
		
		
	//member delete
	public void deleteMember(String mnum)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
			
		String sql="delete from member where mnum=?";
			
		try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, mnum);
				
				pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
			}
	}
	
}

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
   
   //email에 맞는 비번인지 확인 메서드
   public boolean isEmailPass (String email, String pass) {
         
         boolean b = false;
         
         Connection conn = db.getConnection();
         PreparedStatement pstmt =null;
         ResultSet rs =null;
         
         String sql="select * from member where email=? and password=?";
         
         try {
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, email);
            pstmt.setString(2, pass);
            
            rs=pstmt.executeQuery();
            
            if (rs.next()) {
               //비번이 맞는 데이터 잇음 true로 변경
               b = true;
            }
            
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }finally {
            db.dbClose(rs, pstmt, conn);
         }
         
         return b;
      }

   
   //email에 따른 name변환
   //이메일을 통해 이름 값 얻는 메서드 (로그인->마이페이지에 ㅇㅇㅇ님 환영합니다 출력)
   public String getName(String email) {
            
      String name="";
         
      Connection conn = db.getConnection();
      PreparedStatement pstmt = null;
      ResultSet rs = null;   
            
      String sql="select * from member where email=?";
         
      try {
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, email);
         rs=pstmt.executeQuery();
               
         if (rs.next())
            name=rs.getString("name");
               
         } catch (SQLException e) {
               // TODO Auto-generated catch block
               e.printStackTrace();
         }finally {
               db.dbClose(rs, pstmt, conn);
            }
         return name;
   }

   
}
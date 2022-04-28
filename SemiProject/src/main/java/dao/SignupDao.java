package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.LessonDto;
import mysql.db.DbConnect;

public class SignupDao {

	DbConnect db=new DbConnect();
	
	//[이다솔]나의 클래스 : 로그인 중인 사용자의 결제된 클래스 조회하기
	public List<LessonDto> getSignupLesson(String mnum, String lnum) {
		
		List<LessonDto> list=new ArrayList<LessonDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement psmt=null;
		ResultSet rs=null;
		
		String sql="select l.lnum, l.title, l.photo from ";
		
		
		return list;
	}
	
	
}

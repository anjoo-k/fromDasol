<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	String loginok = (String)session.getAttribute("loginok");
	String email = (String)session.getAttribute("emailok");
	
	MemberDao mdao = new MemberDao();
	String name = mdao.getName(email);
%>
<body>

		<div class="main-myprofile">
		 
		  <div class="toptoolbar">
		     <!-- 상단 사용자이름 출력 -->
		     <span class="welcomename"><%=name %>님 안녕하세요</span>
		       <br><br><br>
		       
		    <!-- 나의프로필,나의클래스,나의리뷰 선택버튼 -->
		    <a href="myprofile.html" class="myprofile mypageActive">나의 프로필</a>
		    <a href="myclass.html" class="myclass">나의 클래스</a>
		    <a href="myReview.html" class="myreview">나의 리뷰</a>
		    <br><br>
		         
		  </div>
		
		<!-- 인적사항 입력 -->
		 <div class="personaldata">
		 
		   <span class="myprofile-info">이름</span><br>
		    <input type="text" name="name" class="writeinfo" placeholder="이름을 입력해주세요." required="required">
		    <br>
		    
		   <span class="myprofile-info">이메일</span><br>
		    <input type="text" name="email" class="writeinfo" placeholder="이메일을 입력해주세요." required="required">
		    <br>
		    
		   <span class="myprofile-info">비밀번호</span><br>
		    <input type="password" name="pass" class="writeinfo" placeholder="비밀번호를 입력해주세요." required="required">
		    <br>
		    
		   <button type="button" class="dropbutton">탈퇴하기</button>
		   
		  </div>
		  
		</div>
</body>
</html>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<%
	String loginok = (String)session.getAttribute("loginok");
	String email = (String)session.getAttribute("emailok");
	
	MemberDao mdao = new MemberDao();
	String name = mdao.getName(email);
	String num = mdao.getMnum(email);
%>
<body>

<div class="main-myclass">
 
  <div class="toolbar">
     <!-- 상단 사용자이름 출력 -->
     <span class="welcomename"><%=name %>님 안녕하세요</span>
       <br><br><br>
       
     <!-- 나의프로필,나의클래스,나의리뷰 선택버튼 -->
    <a href="index.jsp?boramMain=mypage/myprofile.jsp" class="myprofile">나의 프로필</a>
	<a href="index.jsp?boramMain=mypage/myclass.jsp" class="myclass mypageActive">나의 클래스</a>
	<a href="index.jsp?boramMain=mypage/myreview.jsp" class="myreview">나의 리뷰</a>
    <br><br>
    
         
  </div>

<!-- 수강클래스 목록 -->
<div class="selectclasslist">
      <table class="selectclass-lesson">
         <tr>
            <td>
               <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
            <td>
               <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
            <td>
               <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
            <td>
              <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
         </tr>
         <tr>
            <td>
				<div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>            
               </td>
            <td>
               <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
            <td>
               <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
            <td>
               <div class="selectclass-lesson">
                    <img src="image/categori03/미술-11.jpg" alt="" class="selectclass-img">  
                    <div class="bottomclass">                                         
                     <p class="lesson-name">펜스케치를 멋있게 하는 방법</p>
                     <a href="writeReview.jsp" class="writereview">리뷰쓰기</a>
                     </div>
                 </div>
            </td>
         </tr>
      </table>
    </div>

</div>
</body>
</html>
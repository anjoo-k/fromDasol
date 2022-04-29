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

<div class="main-myprofile">
 
  <div class="toptoolbar">
     <!-- 상단 사용자이름 출력 -->
     <span class="welcomename"><%=name %>님 안녕하세요</span>
       <br><br><br>
       
    <!-- 나의프로필,나의클래스,나의리뷰 선택버튼 -->
    <a href="index.jsp?boramMain=mypage/myprofile.jsp" class="myprofile">나의 프로필</a>
	<a href="index.jsp?boramMain=mypage/myclass.jsp" class="myclass">나의 클래스</a>
	<a href="index.jsp?boramMain=mypage/myreview.jsp" class="myreview mypageActive">나의 리뷰</a>
    <br><br>
         
  </div>

<!-- 나의리뷰 목록 -->
 <div class="myreviewlist">
 	
 	<table>
 		<tbody>
	 		
	            <tr>
	                <th><a href="detailpage.html" class="reviewDetail">클래스명 : 덜 먹고 운동도 했는데 다이어트에 실패하는 '진짜' 이유 </a> 
	                	 <div class="star-review">
	                        <img src="image/ico-star.png">
	                        <img src="image/ico-star.png">
	                        <img src="image/ico-star.png">
	                        <img src="image/ico-star.png">
	                        <img src="image/ico-starout.png">
	                        <span>(4.0)</span>
	                        <a href="#">수정</a> | <a href="#">삭제</a>
	                    </div>		
	                </th>                             
	            </tr>
	            <tr>
	          	   <td>살은 빠지는데 지옥을 경험했네요.
	          	   <span class="time">2022-04-19</span></td> 
	            </tr>
	         
           
       
            <tr>
                <th><a href="detailpage.html" class="reviewDetail">클래스명 : 빈센트 반 고흐 10분 요약정리</a>
                	 <div class="star-review">
                        <img src="image/ico-star.png">
                        <img src="image/ico-star.png">
                        <img src="image/ico-star.png">
                        <img src="image/ico-star.png">
                        <img src="image/ico-star.png">
                        <span>(5.0)</span>
                        <a href="#">수정</a> | <a href="#">삭제</a>
                    </div>		
                </th>
                             
            </tr>
            <tr>
          	   <td>저도 빈센트 반 고흐 같은 예술가가 되고 싶어지는 기분 이였습니다...
          	   <span class="time">2022-04-19</span></td> 
            </tr>
          
           
            <tr>
                <th><a href="detailpage.html" class="reviewDetail">클래스명 : 아주 쉽고 간단하게 사람 얼굴 그리는 방법 !! 꼭 보세요 ^^</a>
                	 <div class="star-review">
                        <img src="image/ico-star.png">
						<img src="image/ico-starout.png">
						<img src="image/ico-starout.png">
                        <img src="image/ico-starout.png">
                        <img src="image/ico-starout.png">
                        <span>(1.0)</span>
                        <a href="#">수정</a> | <a href="#">삭제</a>
                    </div>		
                </th>
                             
            </tr>
            <tr>
          	   <td>쉽다면서요. 간단하다면서요. 너무 어렵네요 
          	   <span class="time">2022-04-19</span></td> 
            </tr>
            
            
         </tbody>
 	</table>
</div>
</body>
</html>
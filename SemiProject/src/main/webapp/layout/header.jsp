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
	
%>
<body>
    <div class="header">
        <div class="headercontent">            
            <a href="index.jsp" class="logo">
               <img src="image/logo.png" alt="로고">
            </a>
            
            <div class="searchbar">
               	<form action="index.jsp?boramMain=search/searchok.jsp" method="post">
    			 	<div class="searchinput">
    			 		<div class="searchimg">
    			 			<img alt="검색아이콘" class="simg" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDQgNCkiIHN0cm9rZT0iI0I1QjVCNSIgc3Ryb2tlLXdpZHRoPSIxLjYiPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGN4PSI2LjUiIGN5PSI2LjUiIHI9IjYuNSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIGQ9Im0xMS41IDExLjUgNSA1Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K">
    			 		</div>
    			 		<input type="search" placeholder="무엇을 배우고 싶나요?" class="searchtext" name="searchtext">
    			 	</div>
				</form>
            </div>
            <%
            	if(loginok==null){%>
            		<!-- 로그인 전 버튼 -->
		            <div class="headerlogin">
		                <a href="index.jsp?boramMain=login/loginform.jsp" class="loginbtn">로그인</a>
		                <button type="button" class="gaipbtn" onclick="location.href='index.jsp?boramMain=member/memberform.jsp'">회원가입</button>
		            </div>
            	<%}else{%>
            		<!-- 로그인 후 버튼 -->
	              <div class="headerlogout">
	              <form action="login/logoutaction.jsp">
	              	<button type="submit" class="logoutbtn">로그아웃</button>
	              	<!-- <a href="index.jsp?boramMain=login/logoutaction.jsp" class="logoutbtn">로그아웃</a> -->
	              </form>
	                <a href="index.jsp?boramMain=cart/mycartform.jsp" class="cart">장바구니 <span class="cnt">0</span></a>
	                <button type="button" class="mypage" onclick="location.href='index.jsp?boramMain=mypage/myprofile.jsp'">마이페이지</button>
	            </div>
				<%}%>
         </div>
    </div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BORAM3 CLASS</title>
<!-- Link (메인베너)Swiper's CSS -->
<link rel="stylesheet"  href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="css/common.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <div class="header">
        <div class="headercontent">            
            <a href="main.html" class="logo">
               <img src="../image/logo.png" alt="">
            </a>
            
            <div class="searchbar">
               	<form action="#" method="#">
    			 	<div class="searchinput">
    			 		<div class="searchimg">
    			 			<img alt="검색아이콘" class="simg" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDQgNCkiIHN0cm9rZT0iI0I1QjVCNSIgc3Ryb2tlLXdpZHRoPSIxLjYiPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGN4PSI2LjUiIGN5PSI2LjUiIHI9IjYuNSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIGQ9Im0xMS41IDExLjUgNSA1Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K">
    			 		</div>
    			 		<input type="search" placeholder="무엇을 배우고 싶나요?" class="searchtext">
    			 		<!-- <div class="searchdel">
    			 			<img alt="검색어 삭제 아이콘" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMgMykiPgogICAgICAgICAgICA8Y2lyY2xlIGZpbGw9IiNDNUM1QzUiIGN4PSI5IiBjeT0iOSIgcj0iOSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im02IDYgNi4wMDUgNi4wMDZNMTIuMDA1IDYgNiAxMi4wMDYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=">
    			 		</div> -->
    			 		
    			 	</div>
				</form>
            </div>
			<!-- 로그인 전 버튼 -->
            <div class="headerlogin">
                <a href="login.html" class="loginbtn">로그인</a>
                <button type="button" class="gaipbtn">회원가입</button>
            </div>
            <!-- 로그인 후 버튼 -->
              <div class="headerlogout" style="display: none;">
                <a href="#" class="logoutbtn">로그아웃</a>
                <a href="#" class="cart">장바구니 <span class="cnt">0</span></a>
                <button type="button" class="mypage">마이페이지</button>
            </div>
         </div>
    </div>

<script>
	
		//[임현정] search바 클릭하면 border color 변경	
		$(".searchtext").on("focus", function(){ 
			$("div.searchinput").css({
		 		"border":"1px solid #1a93ff" 
		 	}); 
		});
	
		//[임현정] search바 클릭 안하면 border color 원래대로 돌아오게
	  $(".searchtext").on("blur", function(){
	   $("div.searchinput").css({
	    "border":"1px solid #e2e2e2"
		    }); 
	    }); 

		//[임현정] header 영역 스크롤 내려도 고정되게
		let header = document.querySelector(".header");
		let headerHeight = header.offsetHeight;
		
		window.onscroll = function () {
		  let windowTop = window.scrollY;
		  if (windowTop >= headerHeight) {
		    header.classList.add("drop");
		  } else {
		    header.classList.remove("drop");
		  }
		};

      
      </script>
</body>
</html>

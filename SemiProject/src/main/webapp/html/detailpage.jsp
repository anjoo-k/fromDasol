<%@page import="dao.LessonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail page</title>
<link rel="stylesheet"  href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="../css/common.css">
<link rel="stylesheet" href="../css/detailpage.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<%
/* (세션)현재 로그인 중인 회원의 mnum 받기 */

/* request.getParameter("lnum") */
String lnum = request.getParameter("lnum");
%>
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
                <a href="" class="loginbtn">로그인</a>
                <button type="button" class="gaipbtn">회원가입</button>
            </div>
            <!-- 로그인 후 버튼 -->
            <div class="headerlogout" style="display: none;">
                <a href="" class="logoutbtn">로그아웃</a>
                <a href="#" class="cart">장바구니 <span class="cnt">0</span></a>
                <button type="button" class="mypage">마이페이지</button>
            </div>
        </div>
	</div>
    
    
    <!-- detail page 시작 -->
    <div class="main_detail">

    <!-- [강나리] 상세페이지1 시작 -->
    <div class="main_detail_scroll">
		<div class="detail_banner">
			<img class="img_detail" alt="" src="../image/categori01/운동-1.jpg">
			
			<div>
			  <button type="button" class="btn_detail_content detailActive" id="btn_c">클래스 설명</button>
			  <button type="button" class="btn_detail_review" id="btn_r">클래스 후기</button>
			</div>
			
			<hr>
			<!-- 클래스 소개 -->
			<div class="detail_content" id="detail_c">
			  <span>
			  <br>
			  [클래스 정보]<br>  
			  저칼로리 음식, 고강도 운동을 해도 살이 많이 안 빠지거나<br>
			  다이어트 후 폭식으로 요요가 오는 분들을 많이 볼 수 있는데요!<br>
			  <br>
			  너무 열심히 다이어트를 해도 좋지 않아요~<br>
			  전략적인 치팅데이를 가지게 되면<br>
			  오히려 더 쉽게! 다이어트에 성공할 수 있어요😎👍🏻<br>
			  <br>
			  하지만! 치팅데이라고 고칼로리 음식은 금물!
			  </span>
			</div>
			
					
			<!-- review 테이블 반복 -->
			<div class="detail_review" id="detail_r" style="display: none;">
			
			  <table class="table table-bordered" style="width: 545px;">

			  
			  
				    <tr height="50px">
				      <td>
				        <div class="star-review">
				          <b>강진현님</b>&nbsp;
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-starout.png">
		                  <span>(4.0)</span>
		                  <a href="#">수정</a> | <a href="#">삭제</a>
		                  <span class="writeday" style="float: right;">2022.04.26</span>
		                </div>
				      </td>				  
				    </tr>
				    
				    <tr height="30px">
				      <td class="comment">
				        <span>
				        살은 빠지는데 지옥을 경험했네요.
				        </span>
				      </td>
				    </tr>
				    
				    
				    <tr height="50px">
				      <td>
				        <div class="star-review">
				          <b>강진현님</b>&nbsp;
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-starout.png">
		                  <span>(4.0)</span>
		                  <a href="#">수정</a> | <a href="#">삭제</a>
		                  <span class="writeday" style="float: right;">2022.04.26</span>
		                </div>
				      </td>				  
				    </tr>
				    
				    <tr height="30px">
				      <td class="comment">
				        <span>
				        살은 빠지는데 지옥을 경험했네요.
				        </span>
				      </td>
				    </tr>
				    
				    
				    <tr height="50px">
				      <td>
				        <div class="star-review">
				          <b>강진현님</b>&nbsp;
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-starout.png">
		                  <span>(4.0)</span>
		                  <a href="#">수정</a> | <a href="#">삭제</a>
		                  <span class="writeday" style="float: right;">2022.04.26</span>
		                </div>
				      </td>				  
				    </tr>
				    
				    <tr height="30px">
				      <td class="comment">
				        <span>
				        살은 빠지는데 지옥을 경험했네요.
				        </span>
				      </td>
				    </tr>
				    
				    
				    <tr height="50px">
				      <td>
				        <div class="star-review">
				          <b>강진현님</b>&nbsp;
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-star.png">
		                  <img src="../image/ico-starout.png">
		                  <span>(4.0)</span>
		                  <a href="#">수정</a> | <a href="#">삭제</a>
		                  <span class="writeday" style="float: right;">2022.04.26</span>
		                </div>
				      </td>				  
				    </tr>
				    
				    <tr height="30px">
				      <td class="comment">
				        <span>
				        살은 빠지는데 지옥을 경험했네요.
				        </span>
				      </td>
				    </tr>
				    
				    
			    
			  </table>
			  <hr>
			  
			</div>
			<!-- review 테이블 반복 끝 -->
						
			
		</div>
    </div>
    <!-- [강나리] 상세페이지1 끝 -->
    
    
    
    <!-- [신지환] 클래스 상세페이지_스크롤 -->
	<div class="decisionFrame">
	   <form action="#" method="post" class="decisionForm">
	   <table>
	      <!-- 카테고리 -->
	      <tr>
	         <td>
	            <p class="category">운동</p>
	         </td>
	      </tr>
	      <!-- 별점(평점) -->
	      <tr>
	         <td>
	            <div class="star-rating">
					<!-- calc() 괄호 안의 연산식을 넣어 속성값을 지정할수있다. -->
					<span class="star-fill" style="width: 70%;"></span>
				</div>
				<span class="floatnum">(4.0)</span>
	         </td>
	      </tr>
	      <!-- 제목 -->
	      <tr>
	         <td>
	            <p class="title">덜 먹고 운동도 했는데 다이어트에 실패하는 '진짜' 이유</p>
	         </td>
	      </tr>
	      <!-- 강사명 -->
	      <tr>
	      	<td>
	      		<!-- glyphicon 왜 안될까 -->
	      		<p class="tutor">핏블리</p>
	      	</td>
	      </tr>
	      <!-- 가격 -->
	      <tr>
	         <td>
	            <p class="price">50,000원</p>
	         </td>
	      </tr>
	      <!-- 버튼 -->
	      <tr>
	         <td class="decisionBtn">
	            <button type="button" class="btn_kakao_share"><img src="../image/ico-kakao.png">Kakao로 공유하기</button>
	            <button type="button" class="btn_intoCart" id="addCart"><img src="../image/ico-cart.png">장바구니 담기</button>
	         </td>
	      </tr>
	   </table>
	   </form>
	</div>	
    <!-- [신지환] 클래스 상세페이지_스크롤 끝 -->
    
    </div>
    <!-- detail page 끝 -->
    
    
    <div class="footer">
        <div class="footercontent">   
        <div class="topfooter">
            <span>
                <p class="footer-hp">3333-3333</p>
                <p class="footer-time">
                	평일 10:00 - 18:00<br>
                	(점심시간 13:00 - 14:00 제외 주말/공휴일 제외)
                </p>
                
                <a href="https://www.apple.com/kr/app-store/">
                    <img src="https://assets.cdn.soomgo.com/icons/icon-download-appstore.svg" alt="앱스토어" class="footerbtn">
                    APP STORE
                </a>
                <a href="https://play.google.com/store/apps">
                    <img src="https://assets.cdn.soomgo.com/icons/icon-download-palystore.svg" alt="플레이스토어" class="footerbtn">
                    PLAY STORE
                </a>
            </span>
            <span class="topfooter-right">
                <span>
                    <p class="contop">고객센터</p>
                    <p>문의하기</p>
                </span>
                <span>
                    <p class="contop">FAQ</p>
                    <p>이용안내</p>
                    <p>안전정책</p>
                    <p>예상금액</p>
                    <p>강사찾기</p>
                </span>
                <span>
                    <p class="contop">고객센터</p>
                    <p>보람가입</p>
                    <p>보람센터</p>
                    <p>보람가이드</p>
                    <p>제품안내</p>
                </span>
                <span>
                    <p class="contop">BORAM3조</p>
                    <p>이다솔</p>
                    <p>임현정</p>
                    <p>강나리</p>
                    <p>조아라</p>
                    <p>차동현</p>
                    <p>신지환</p>
                </span>
            </span>
        </div>
    	</div>
    
	    <div class="footer-bottom">
	        <p>이용약관&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개인정보처리방침&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사업자 정보확인</p>
	        <p class="f-boram3">
	            (주)BORAM3 은 SEMI PROJECT 입니다<br>
	            쌍용교육센터 보람3조 화이팅
	        </p>
	        <br>
	        <p class="f-address">
	            상호명:(주)BORAM3조 · 개인정보책임관리자:BORAM3· 주소:서울특별시 강남구 보람타워 3층<br>
	            사업자등록번호:333-33-33333· 통신판매업신고증:제 3333-서울강남-3333 호 · 직업정보제공사업 신고번호:서울청 제 3333-33호<br>
	            고객센터:3333-333 · 이메일:BORAM3@naver.com<br>
	            Copyright ©Brave Mobile Inc. All Rights Reserved.
	        </p>
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
	
	
	//[강나리] '클래스 정보/후기' 클릭시 각 내용 보이게 하기
	$(function(){
		$('#btn_r').click(function() {
			$(this).addClass("detailActive");
			$("#btn_c").removeClass("detailActive");
			/* #detail_r요소가 보이지 않으면 */
			if($("#detail_r").css("display")=="none"){
				$("#detail_r").show();
				$("#detail_c").hide();
			}
		});
		$('#btn_c').click(function() {
			$(this).addClass("detailActive");
			$("#btn_r").removeClass("detailActive");
			if($("#detail_c").css("display")=="none"){
				$("#detail_c").show();
				$("#detail_r").hide();
			}
		});
		
		/* 장바구니 담기 버튼 클릭시 */
		$("#addCart").click(function(){
			alert("장바구니에 클래스가 담겼습니다");
			/* dao.insertcart */
			<%
			LessonDao dao = new LessonDao();
			/* dao.insertCart(lnum, mnum); */
			%>
		});
	});
	
</script>
</body>
</html>
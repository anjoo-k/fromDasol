<%@page import="dto.CartDto"%>
<%@page import="dto.LessonDto"%>
<%@page import="dao.MemberDao"%>
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
<%

/* (세션)현재 로그인 중인 회원의 email */
String email = (String)session.getAttribute("emailok");

/* Dao에서 mnum 가져오기 */
MemberDao mdao = new MemberDao();
String mnum = mdao.getMnum(email);

/* 요청한 페이지로부터 lnum을 받는다 */
String lnum = request.getParameter("lnum");

/* lnum에 해당하는 클래스 데이터 DTO에 세팅 */
LessonDao ldao = new LessonDao();
LessonDto ldto = ldao.getData(lnum);

%>
<script type="text/javascript">
$(function(){
	/* 장바구니 담기 버튼 클릭시(lnum,mnum) */
	$("#addCart").click(function(){
		<%
		/* cart에 담겨져 있는지 중복체크 */
		if(ldao.checkClass(lnum, mnum)) { %>
			alert("이미 해당 클래스가 장바구니에 담겨져 있습니다");
			return;
		<%
		}
		else {
			CartDto cdto = new CartDto();
			cdto.setLnum(lnum);
			cdto.setMnum(mnum);
			/* 페이지 로드되면 자동으로 cart테이블에 추가되는 문제 */
			ldao.insertCart(cdto);
			%>
			alert("장바구니에 클래스가 담겼습니다");
		<%
		}
		%>
		
		/* 장바구니 페이지로 이동 */
		if(confirm("장바구니로 이동하시겠습니까?")) {
			location.href = "index.jsp?boramMain=cart/mycartform.jsp";
		}
		else {
			location.reload();
		}
	});
});
</script>
</head>
<body>
    
    <!-- detail page 시작 -->
    <div class="main_detail">

    <!-- [강나리] 상세페이지1 시작 -->
    <div class="main_detail_scroll">
		<div class="detail_banner">
			<img class="img_detail" alt="" src="savePhoto/<%=ldto.getPhoto()%>"><!-- ../image/categori01/운동-1.jpg -->
			
			<div>
			  <button type="button" class="btn_detail_content detailActive" id="btn_c">클래스 설명</button>
			  <button type="button" class="btn_detail_review" id="btn_r">클래스 후기</button>
			</div>
			
			<hr>
			<!-- 클래스 소개 -->
			<div class="detail_content" id="detail_c">
			  <span>
			  <br>
			  <%=ldto.getIntro()%>
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
	            <p class="category"><%=ldto.getCategory()%></p>
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
	            <p class="title"><%=ldto.getTitle()%></p>
	         </td>
	      </tr>
	      <!-- 강사명 -->
	      <tr>
	      	<td>
	      		<!-- glyphicon 왜 안될까 -->
	      		<p class="tutor"><%=ldto.getTutor()%></p>
	      	</td>
	      </tr>
	      <!-- 가격 -->
	      <tr>
	         <td>
	            <p class="price"><%=ldto.getPrice()%>원</p>
	         </td>
	      </tr>
	      <!-- 버튼 -->
	      <tr>
	         <td class="decisionBtn">
	            <button type="button" class="btn_kakao_share"><img src="image/ico-kakao.png">Kakao로 공유하기</button>
	            <button type="button" class="btn_intoCart" id="addCart"><img src="image/ico-cart.png">장바구니 담기</button>
	         </td>
	      </tr>
	   </table>
	   </form>
	</div>	
    <!-- [신지환] 클래스 상세페이지_스크롤 끝 -->
    
    </div>
    <!-- detail page 끝 -->

<script>
	
	//[강나리] '클래스 정보/후기' 클릭시 각 내용 보이게 하기
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
	
</script>
</body>
</html>
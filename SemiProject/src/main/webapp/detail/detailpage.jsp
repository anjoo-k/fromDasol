<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dto.ReviewDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ReviewDao"%>
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
<%

/* 현재 로그인중인지 */
String loginok = (String)session.getAttribute("loginok");

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
function deleteReview() {
    return confirm("해당 리뷰를 정말 삭제하시겠습니까?"); 
}
</script>
</head>
<body>
    
    <!-- detail page 시작 -->
    <div class="main_detail">

    <!-- [강나리] 상세페이지1 시작 -->
    <div class="main_detail_scroll">
		<div class="detail_banner">
		
			<img class="img_detail" alt="" src="savePhoto/<%=ldto.getPhoto()%>">
			
			<div>
			  <button type="button" class="btn_detail_content detailActive" id="btn_c">클래스 설명</button>
			  <button type="button" class="btn_detail_review" id="btn_r">클래스 후기</button>
			</div>
			
			<hr style="margin-bottom: 0;">
			<!-- 클래스 소개 -->
			<div class="detail_content" id="detail_c" style="width: 550px;">
			  <span>
			  <br>
			  <%=ldto.getIntro()%>
			  </span>
			</div>
			
			<!-- review 테이블 반복 -->
			<%
			ReviewDao rdao = new ReviewDao();
			/* 총 리뷰 갯수 */
			int totalCount = rdao.getTotalCount(lnum);
			/* 모든 리뷰 가져오기 */
			List<ReviewDto> r_list = rdao.getAllReview(lnum);
			%>
			<div class="detail_review" id="detail_r" style="display: none;">
			  <table style="width: 545px;">
			  <%
			  if(totalCount != 0) {
			  for(ReviewDto rdto:r_list) { %>
				<tr height="40px">
			      <td style="vertical-align: middle;">
			        <div class="star-review">
			        
			          <!-- 작성자명 -->
			          <b><%=mdao.getName_mnum(rdto.getMnum())%></b>&nbsp;
			          
			          <!-- 별 찍기 -->
			          <%
			          for(int i = 0; i < rdto.getRstar(); i++) { %>
			          <img src="image/ico-star.png">          
			          <%
			          }		          
	                  for(int i = 0; i < 5-rdto.getRstar(); i++) { %>
	                  <img src="image/ico-starout.png">
	                  <%
	                  }
	                  
	                  /* 로그인중인 mnum과 작성된 후기의 mnum이 같을시 */
	                  /* 수정/삭제 버튼 */
	                  /* 클릭시 페이지 이동 */
	                  if(rdto.getMnum().equals(mnum)) { %>
	                  <a href="index.jsp?boramMain=review/u_writeReview.jsp?rnum=<%=rdto.getRnum()%>&lnum=<%=lnum%>">수정</a>
	                  |
	                  <a href="index.jsp?boramMain=review/d_reviewDelAction.jsp?rnum=<%=rdto.getRnum()%>&lnum=<%=lnum%>" onclick="return deleteReview()">삭제</a>
	                  <%
	                  }
	                  
	                  /* 별점(소수점) */
	                  float rstar = rdto.getRstar();
	                  %>
	                  <span>(<%=rstar%>)</span>
	                  
	                  <!-- 작성일자 -->
	                  <%
	                  SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
	                  %>
	                  <span class="writeday" style="float: right;"><%=sdf.format(rdto.getRday())%></span>
	                </div>
			      </td>				  
			    </tr>
			    
			    <tr height="40px">
			      <td class="comment">
			        <span>
			        <%=rdto.getRcontents()%>
			        </span>
			      </td>
			    </tr>
			  <%
			  }
			  } else { %>
				<tr height="80px">
					<td style="text-align: center; vertical-align: middle;">
					아직 리뷰가 없어요 😭
					</td>
				</tr>
			  <%
			  }
			  %>
			    
			  </table>
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
					<!-- 해당 클래스의 리뷰 평균 별점 -->
					<%
					float f_avg = rdao.getAvgRstar(lnum);
					int avgPercent = (int)((f_avg/5) * 100);
					%>
					<span class="star-fill" style="width: <%=avgPercent%>%;"></span>
				</div>
				<span class="floatnum">(<%=f_avg%>)</span>
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
	            <button type="button" class="btn_intoCart" id="btnCart"><img src="image/ico-cart.png">장바구니 담기</button>
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
		
	// [신지환] 장바구니 담기 버튼 클릭시
	$("#btnCart").click(function(){
		/* 로그인중인지 체크 */
		var login = "<%=loginok%>";
		if(login == "null") {
			alert("먼저 로그인을 해주세요");
			return;
		}
		/* 카트에 담겨져 있는지 체크 */
		var cartcheck = <%=ldao.checkClass(lnum, mnum)%>;
		if(cartcheck) {
			alert("장바구니에 이미 있습니다");
			return;
		}
			
		var formdata = $("#frm").serialize();
			
		$.ajax({
			type: "post", //데이터를 보냄,"get"은 데이터를 요청
			url: "detail/addCart.jsp",
			data: formdata,
			dataType: "html",
			success: function(){
				var a = confirm("장바구니에 클래스가 담겼습니다\n장바구니로 이동하시겠습니까?");
				if(a) {
					location.href = "index.jsp?boramMain=cart/mycartform.jsp";
				}
			}
			
		});
	});
	
</script>
</body>
</html>
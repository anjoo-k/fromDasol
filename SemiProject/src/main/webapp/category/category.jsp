<%@page import="dto.LessonDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BORAM3 CLASS</title>

<script type="text/javascript">
$(function() {
	$("select.sortSelect").focus(function() {
		$(this).parent().css("background","url('../image/arrow-up.png') no-repeat 93% 50%/15px auto");
	});
	$("select.sortSelect").change(function(){ 
		$(this).parent().css("background","url('../image/arrow-down.png') no-repeat 93% 50%/15px auto");
	});
	$("select.sortSelect").focusout(function(){ 
		$(this).parent().css("background","url('../image/arrow-down.png') no-repeat 93% 50%/15px auto");
	});
});
</script>

</head>
<body>

<!-- 본문 시작 -->
<div class="category-main">

    <!-- 베너 -->
    <div class="category_banner">
      <img alt="" src="../image/banner-01.png">
    </div>
    
    <!-- 카테고리아이콘 -->
	<div class="category-icon">
         <a href="#">
             <span class="c01">
             	 <img src="../image/ico-c-1.png" alt="">   
             </span>
             <br>
             운동
         </a>
         <a href="#">
             <span class="c02">
             	 <img src="../image/ico-c-2.png" alt="">   
             </span>
             <br>
             요리
         </a>
         <a href="#">
             <span class="c03">
             	 <img src="../image/ico-c-3.png" alt="">   
             </span>
             <br>
             미술
         </a>
         <a href="#">
             <span class="c04">
             	 <img src="../image/ico-c-4.png" alt="">   
             </span>
              <br>
             사진/영상
         </a>
         <a href="#">
     		<span class="c05">
             	 <img src="../image/ico-c-5.png" alt="">   
             </span>
              <br>
             개발
         </a>
         <a href="#">
             <span class="c06">
             	 <img src="../image/ico-c-6.png" alt="">   
             </span>
              <br>
             음악
         </a>
         <a href="#">
            <span class="c07">
             	 <img src="../image/ico-c-7.png" alt="">   
             </span>
              <br>
             외국어
         </a>
         <a href="#">
             <span class="c08">
             	 <img src="../image/ico-c-8.png" alt="">   
             </span>
              <br>
             기타
         </a>
	</div>


    <!-- 클래스리스트 -->
    <div>
		<table class="category-lesson">
			<tr>
				<td colspan="4" align="right">
				    <div class="categoryBar">
						<span class="lessonCnt">
							클래스<span>8</span>개
						</span>
						<span class="sortSelect">
							<select class="sortSelect">
								<option value="">인기도순</option>
								<option value="">별점높은순</option>
								<option value="">리뷰많은순</option>
							</select>
						</span>
				    </div>
				</td>
				<td>
				
				</td>
			</tr>
			<tr>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
			</tr>
			<tr>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
				<td>
				   <div class="category-lesson">
			        	<img src="../image/categori03/미술-11.jpg" alt="" class="category-img">                                           
			            <p class="lesson-title">펜스케치를 멋있게 하는 방법</p>
			            <p class="lesson-price">120,000원</p>
			        </div>
				</td>
			</tr>
		</table>
    </div>
</div>
<!-- 본문 끝 -->

</body>
</html>
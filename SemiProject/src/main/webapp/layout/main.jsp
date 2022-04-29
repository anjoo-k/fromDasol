<%@page import="java.util.List"%>
<%@page import="dto.LessonDto"%>
<%@page import="dao.LessonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
LessonDao ldao = new LessonDao();
LessonDto ldto = new LessonDto();

List<LessonDto> list = ldao.getAllDatas();
List<LessonDto> catelist = ldao.getCategoryData(ldto.getCategory());
%>
<body>

    <div class="main"> <!--메인 시작-->

		<!-- 상단 배너 시작 -->
			<div class="swiper mySwiper banner">
				<div class="swiper-wrapper">
					<div class="swiper-slide banner">
						<img src="image/banner-01.png" alt="">
					</div>
                	<div class="swiper-slide banner">
                  		<img src="image/banner-02.png" alt="">   
                	</div>
                	<div class="swiper-slide banner">
                  		<img src="image/banner-03.png" alt="">   
                	</div>
                	<div class="swiper-slide banner">
                  		<img src="image/banner-04.png" alt="">   
                	</div>
                	<div class="swiper-slide banner">
                  		<img src="image/banner-05.png" alt="">   
                	</div>
                	<div class="swiper-slide banner">
                  		<img src="image/banner-06.png" alt="">   
                	</div>
                	<div class="swiper-slide banner">
                  		<img src="image/banner-07.png" alt="">   
                	</div>
              	</div>

              	<div class="swiper-pagination "></div>
			</div>
		<!-- 상단 배너 끝 -->

		<!-- 카테고리 아이콘 시작 -->			
	        <div class="category">
	            <a href="index.jsp?boramMain=category/category.jsp?category=a">
	                <span class="c01"><img src="image/ico-c-1.png" alt=""></span><br>
	                운동
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=b">
	                <span class="c02"><img src="image/ico-c-2.png" alt=""></span><br>
	                요리
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=c">
	                <span class="c03"><img src="image/ico-c-3.png" alt=""></span><br>
	                미술
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=d">
	                <span class="c04"><img src="image/ico-c-4.png" alt=""></span><br>
	                사진/영상
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=e">
	        		<span class="c05"><img src="image/ico-c-5.png" alt=""></span><br>
	                개발
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=f">
	                <span class="c06"><img src="image/ico-c-6.png" alt=""></span><br>
	                음악
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=g">
	               <span class="c07"><img src="image/ico-c-7.png" alt=""></span><br>
	                외국어
	            </a>
	            <a href="index.jsp?boramMain=category/category.jsp?category=h">
	                <span class="c08"><img src="image/ico-c-8.png" alt=""></span><br>
	                기타
	            </a>
	        </div>
		<!-- 카테고리 아이콘 끝 -->

        <div class="section01">
            <p class="title">지금바로 원하는 클래스를 찾아보세요!</p>
            <div class="tags">
                <img src="image/tag-1.png" alt="">
                <img src="image/tag-2.png" alt="">
                <img src="image/tag-3.png" alt="">
                <img src="image/tag-4.png" alt="">
            </div>
          <!--메인 슬라이드-->      
          <div class="po-slider">
         	<div class="swiper mySwiper mainswiper">
            <div class="swiper-wrapper mainswiper" >
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                <div class="swiper-slide mainswiper">
                    <img src="image/categori03/미술-11.jpg" alt="" class="swiper-img">                                           
                    <p class="swipertitle">펜스케치를 멋있게 하는 방법</p>
                    <p class="money">120,000원</p>
                </div>
                
            </div>             
                         
          </div>
               <div class="swiper-button-next mainswiper"></div>
               <div class="swiper-button-prev mainswiper"></div> 
          </div>
           <!--메인 슬라이드 끝-->       
        </div>

        <div class="section02">
            <div>
                <span><b> VOD! 집에서 편하게 집중하는</b>
                 <br> BORAM3 클래스 </span>
                <img src="image/ico-vod.png" alt="">
            </div>

            <div>
                <span><b>결제하고 보람차게 수업듣자</b><br>
                  BORAM3 클래스
                </span>
                <img src="image/ico-market.png" alt="">
            </div>
        </div>

        <div class="section03">
            <p class="title">BORAM3 요리를 부탁해</p>
            
          <!--서브1 슬라이드-->      
          <div class="po-slider">
          <div class="swiper mySwiper sub01">
            <div class="swiper-wrapper sub01">
             	<div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
                <div class="swiper-slide sub01">
                    <img src="image/categori02/요리-17.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브01 슬라이드 제목</p>
                </div>
            </div>             
          </div>
               <div class="swiper-button-next sub01"></div>
               <div class="swiper-button-prev sub01"></div>
          </div>
          <!--서브1 슬라이드 끝 -->                   
        </div>
        
        <div class="section03-2">
            <p class="title">BORAM의 영어 노하우</p>
            
          <!--서브2 슬라이드-->
          <div class="po-slider">      
	          <div class="swiper mySwiper sub02">
	            <div class="swiper-wrapper sub02">
	            	<div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	                <div class="swiper-slide sub02">
	                    <img src="image/categori07/영어2.jpg" alt="" class="swiper-img">
	                    <p class="swipertitle">서브02 슬라이드 제목</p>
	                </div>
	            </div>             
	          </div>
	           <div class="swiper-button-next sub02"></div>
	           <div class="swiper-button-prev sub02"></div>    
	          
          </div>
          <!--서브2 슬라이드 끝 -->                   
        </div>

        <div class="section04">
            <p class="title">BORAM3 개발자 소개</p>

        <div class="se04layout">
            <span>
             	<a href="https://github.com/Leedasol2" target="_blank"><img src="image/dasol.png" alt=""></a>
                <p class="name">이다솔</p>
                <p class="job">백엔드 개발자</p>
                <p class="mark"><img src="image/ico-star.png" alt="">5.0(25)</p>
            </span>

            <span>
                <a href="https://github.com/cocohyuncoco" target="_blank"><img src="image/hyun.png" alt=""></a>
                <p class="name">임현정</p>
                <p class="job">백엔드 개발자</p>
                <p class="mark"><img src="image/ico-star.png" alt="">5.0(25)</p>
            </span>

            <span>
                <a href="https://github.com/cdkfk96" target="_blank"><img src="image/ara.png" alt=""></a>
                <p class="name">조아라</p>
                <p class="job">백엔드 개발자</p>
                <p class="mark"><img src="image/ico-star.png" alt="">5.0(25)</p>
            </span>

            <span>
                <a href="https://github.com/Wyna2" target="_blank"><img src="image/nari.png" alt=""></a>
                <p class="name">강나리</p>
                <p class="job">백엔드 개발자</p>
                <p class="mark"><img src="image/ico-star.png" alt="">5.0(25)</p>
            </span>

            <span>
                <a href="https://github.com/sjihwan" target="_blank"><img src="image/jihwan.png" alt=""></a>
                <p class="name">신지환</p>
                <p class="job">백엔드 개발자</p>
                <p class="mark"><img src="image/ico-star.png" alt="">5.0(25)</p>
            </span>

            <span>
                <a href="https://github.com/donghyun0502" target="_blank"><img src="image/dong.png" alt=""></a>
                <p class="name">차동현</p>
                <p class="job">백엔드 개발자</p>
                <p class="mark"><img src="image/ico-star.png" alt="">5.0(25)</p>
            </span>
        </div>
        </div>

        <div class="section05">
            <p class="title">BORAM3과 함께하는 슬기로운 운동생활 </p>
                  
           <!--서브3 슬라이드-->   
         <div class="po-slider">     
          <div class="swiper mySwiper sub03">
            <div class="swiper-wrapper sub03">
                <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
                 <div class="swiper-slide sub03">
                    <img src="image/categori01/운동-6.jpg" alt="" class="swiper-img">
                    <p class="swipertitle">서브03 슬라이드 제목</p>
                </div>
            </div>             
          </div>
          	   <div class="swiper-button-next sub03"></div>
               <div class="swiper-button-prev sub03"></div>    
          </div>
          <!--서브3 슬라이드 끝 -->         
        </div>

    </div><!--메인 끝-->

</body>
</html>

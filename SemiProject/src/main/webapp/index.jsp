<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BORAM3 CLASS</title>
<!-- Link (메인베너)Swiper's CSS -->
<link rel="stylesheet"  href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link rel="stylesheet" href="../css/common.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<%
//프로젝트 경로구하기
String root=request.getContextPath();
String mainPage="layout/main.jsp";	//기본페이지

//url을 통해서 main값을 읽어 메인페이지에 출력한다.
if(request.getParameter("main")!=null){
	mainPage=request.getParameter("main");
}

%>
<body>
<!-- webapp에 있는 파일임 -->

<div class="header">
	<jsp:include page="layout/header.jsp" />
</div>

<div class="main">
	<jsp:include page="<%=mainPage %>" />
</div>
<div class="footer">
	<jsp:include page="layout/footer.jsp" />
</div>


</body>
</html>
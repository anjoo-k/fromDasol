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
<link rel="stylesheet" href="../css/writeReview.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%
	// 프로젝트의 경로
	String root=request.getContextPath();
%>
<!-- se2 폴더에서 js 파일 가져오기 -->
<script type="text/javascript" src="<%=root%>/se2/js/HuskyEZCreator.js"charset="utf-8"></script>
<script type="text/javascript" src="<%=root%>/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
	
</head>
<body>
<!-- 깃 협업과정 테스트 주석 -->

<!-- 본문 시작 -->
<div class="review">
    <!-- 리뷰작성폼 -->
	<div>
        <form action="#" method="post">
			<table class="review">
				<caption class="review"><span>빈센트 반 고흐 10분 요약정리 리뷰</span></caption>
				<tr>
					<th class="review" align="left"><span>클래스의 만족도는 몇점이셨나요? 별점을 선택해주세요</span></th>
				</tr>
				<tr class="review">
					<td>
						<div class="star-rating">
						  <input type="radio" id="5-stars" name="rating" value="5" />
						  <label for="5-stars" class="star">&#9733;</label>
						  <input type="radio" id="4-stars" name="rating" value="4" />
						  <label for="4-stars" class="star">&#9733;</label>
						  <input type="radio" id="3-stars" name="rating" value="3" />
						  <label for="3-stars" class="star">&#9733;</label>
						  <input type="radio" id="2-stars" name="rating" value="2" />
						  <label for="2-stars" class="star">&#9733;</label>
						  <input type="radio" id="1-star" name="rating" value="1" />
						  <label for="1-star" class="star">&#9733;</label>
						</div>		
					</td>
				</tr>
				<tr>
					<td>
						<textarea name="content" id="content" required="required" style="width: 100%;height: 300px; background-color: #fff; display: none;"></textarea>		
					</td>
				</tr>
				<tr>
					<td align="right">
						<button type="button" class="review" onclick="submitContents(this)"><span>리뷰등록</span></button>
					</td>
				</tr>
				
			</table>   
		</form>
		
		<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
		<script type="text/javascript">
		var oEditors = [];
		
		nhn.husky.EZCreator.createInIFrame({
		
		    oAppRef: oEditors,
		
		    elPlaceHolder: "content",
		
		    sSkinURI: "<%=request.getContextPath()%>/se2/SmartEditor2Skin.html",
		
		    fCreator: "createSEditor2"
		
		}); 
		
		//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
		
		function submitContents(elClickedObj) {
		
		    // 에디터의 내용이 textarea에 적용된다.
		
		    oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", [ ]);
		
		 
		
		    // 에디터의 내용에 대한 값 검증은 이곳에서
		
		    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
		    try {
		        elClickedObj.form.submit();
		    } catch(e) { 
		
		    }
		
		}
		
		// textArea에 이미지 첨부
		
		function pasteHTML(filepath){
		    var sHTML = '<img src="<%=request.getContextPath()%>/save/'+filepath+'">';
		    oEditors.getById["content"].exec("PASTE_HTML", [sHTML]); 
		
		}
		</script>
	</div>
</div>
<!-- 본문 끝 -->
</body>
</html>
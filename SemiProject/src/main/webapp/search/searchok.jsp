<%@page import="dto.LessonDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.LessonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String searchtext=request.getParameter("searchtext");

LessonDao ldao=new LessonDao();
List<LessonDto> list=ldao.getSearch(searchtext);
%>

	<div class="searchresult">
		<span class="sresult">검색결과</span>
		  <div class="searchclass">

			<!-- 찾는 클래스가 있을 때 -->
			<!-- 클래스 목록 -->
			<div class="searchclasslist">
				<table class="searchclass-lesson">
					<tr>
					<%
					int i=0;
					for(LessonDto dto:list)
					{
					%>
						<td>
							<div class="searchclass-lesson">
								<img src="savePhoto/<%=dto.getPhoto() %>" alt=""
									class="searchclass-img">
								<div class="classbottom">
									<p class="lesson-t"><%=dto.getTitle() %></p>
									<p class="lesson-p"><%=dto.getPrice() %>원</p>
								</div>
							</div>
						</td>
						<%
							if((i+1)%4==0){%>	
							</tr>
							<tr>
						<%}
							i++;	
						}%>
					</tr>
				</table>
			</div>
		</div>
	</div>



</body>
</html>
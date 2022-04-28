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
	//프로젝트 경로구하기
	String root=request.getContextPath();

	String loginok = (String)session.getAttribute("loginok");

	if(loginok==null || loginok.equals("")){%>
		<jsp:include page="loginform.jsp"/>
	<%}else{%>
		<jsp:include page="loginform.jsp"/>
		<script type="text/javascript">
			alert("로그인 되었습니다");
		</script>
	<%}

%>
</body>
</html>
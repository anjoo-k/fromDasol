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
	String loginok = (String)session.getAttribute("loginok");
	

	if(loginok==null || loginok.equals("")){%>
		<jsp:include page="loginform.jsp"/>
	<%}else{%>
		<script type="text/javascript">
			location.href="http://localhost:8081/SemiProject/index.jsp";
		</script>
	<%}

%>
</body>
</html>
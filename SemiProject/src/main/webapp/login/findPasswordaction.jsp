<%@page import="dao.MemberDao"%>
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

	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String email = request.getParameter("email");	
	
	MemberDao dao = new MemberDao();
	
	boolean b = dao.ismemNameEmail(name, email);
	String password = dao.getPass(email);
	
	if(b){
		response.sendRedirect("../index.jsp?boramMain=login/findPassword.jsp?password="+password);
		
		%>		
	<% }else{%>
		<script type="text/javascript">
			alert("없는 계정 입니다");
			history.back();
		</script>
	<%}
%>
</body>
</html>
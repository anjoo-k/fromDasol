<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
test
<%

for(int i=0; i<5;i++){
	%>
	<b>test<%=i %></b><br>
	<%
}

%>
</body>
</html>
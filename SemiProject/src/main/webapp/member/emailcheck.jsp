<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 email 중복체크</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</head>
<body>
<% 
request.setCharacterEncoding("utf-8");
String email=request.getParameter("email");
MemberDao dao=new MemberDao();
boolean b=dao.isemailCheck(email);

if(b){%>
	<script type="text/javascript">
	/* $().ready(function () {
        $(this).click(function () {
            Swal.fire({
                icon: 'success',
                title: 'Alert가 실행되었습니다.',
                text: '이곳은 내용이 나타나는 곳입니다.',
            });
        });
    }); */
    alert("이미 가입된 email입니다");
	history.back();
	</script>
<%}else{%>
	<script type="text/javascript">
	alert("사용할 수 있는 email입니다");
	history.back();
	</script>
	
	<%}

%>

</script>
</body>
</html>
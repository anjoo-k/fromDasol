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

<div class="signupdiv">
<span class="signupHead">BORAM3에 오신것을 환영합니다</span>
<div class="signupFrame">
	<form action="member/memberadd.jsp" method="post" class="signupForm" onsubmit="return check(this)" name="mfrm">
		<table>
			<tr>
				<th align="left">이름</th>
			</tr>
			<tr>
				<td>
					<input type="text" required="required" name="name" class="form-control inputbox" placeholder="이름을 입력해주세요">
				</td>
			</tr>
			<tr>
				<th align="left" style="padding-top: 43px;">이메일</th>
			</tr>
			<tr>
				<td class="emailform">
					<input type="text" required="required" class="form-control inputbox emailinput" name="email" id="email" placeholder="이메일을 입력해주세요">
					<button class="emailcheck" onclick="location.href='index.jsp?boramMain=member/emailcheck.jsp'">중복체크</button>
					
				</td>
			</tr>
			<tr>
				<th align="left" style="padding-top: 30px;">비밀번호</th>
			</tr>
			<tr>
				<td>
					<input type="password" required="required" name="password" class="form-control inputbox" placeholder="비밀번호을 입력해주세요">
				</td>
			</tr>
			<tr class="chkbox">
				<td style="padding-top: 20px; padding-top: 20px; display: flex; align-items: center;">
					<input type="checkbox" required="required">
					<span><u>이용약관</u>,<u>개인정보 수집 및 이용</u> 동의(필수)</span>
				</td>
			</tr>
			<tr>
				<td class="signupBtn">
					<button type="submit" class="gaipBtn">회원가입</button>
				</td>
			</tr>
		</table>
	</form>
</div>
</div>


</body>
</html>
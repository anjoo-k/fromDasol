<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<div class="findPwdiv">
		<!-- 비밀번호 찾기 헤더 -->
		<span class="findPwHead">비밀번호 찾기</span>
		<div class="findPwFrame">
			<form action="#" method="post" class="findPwForm">
				<table>
					<tr>
						<th align="left">이름을 입력해주세요</th>
					</tr>
					<tr>
						<td>
							<input type="text" required="required" class="form-control inputbox" placeholder="이름을 입력해주세요">
						</td>
					</tr>
					<tr>
						<th align="left" style="padding-top: 30px;">가입한 이메일 주소를 입력해주세요</th>
					</tr>
					<tr>
						<td>
							<input type="text" required="required" class="form-control inputbox" placeholder="이메일을 입력해주세요">
						</td>
					</tr>
					<tr>
						<td class="findPwBtn">
							<!-- 클릭시 submit -->
							<span>비밀번호 찾기</span>
						</td>
					</tr>
					<tr>
						<td class="preText">
<pre>
가입하신 이름과 이메일주소를 입력하고
비밀번호 찾기 버튼을 눌러주세요
비밀번호를 알려드립니다
</pre>							
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" readonly="readonly" class="form-contorl inputbox">
						</td>
					</tr>
				</table>
			</form>
		</div>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<center>

<h3> 로그인하기</h3>
<form id="userInfo" action="loginProcess.jsp" method="post">

	<table>
		<tr>
			<td>아이디 : </td>
			<td> <input type="text "name="id"></td>

		</tr>
		<tr>
			<td> 비밀번호 ; </td>
			<td> <input type="text" name="pw"></td>
			
		</tr>
		<tr>
			<td align="center">
				<a href="joinForm.jsp"> 회원가입 </a>
			</td>
			<td align="center">
				<input type="submit" value="로그인">
			</td>			
		</tr>
	</table>

</form>

</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>



<script type="text/javascript">

	
	function Validation(){
		var uid = document.getElementById("uid")
		var pw = document.getElementById("pw")
		var cpw = document.getElementById("cpw")
		
		var name = document.getElementById("uname")
		
		if (uid.value.length <4){
		alert("아이디는 4글자 이상이어야 합니다.")
		uid.focus();
		return false();
		
		}
		else if(!checkEngNumber(uid.value)){
			alert("영문자, 숫자만 입력하세요.")
			uid.focus();
			return false;
		}
		if(pw.value.length<4){
		
			alert("비밀번호를 4글자 이상 입력하세요")
			pw.focus();
			return false;
		}
		
		if(cpw.value != pw.value){
			alert("비밀번호가 다릅니다.")
			cpw.focus();
			return false;
		
		}
		if(uname.value ==""){
			alert("이름을 입력하세요.")
			uname.focus();
			return false;
		}
		
		
	}


</script>


</head>
<body>
<br>



<div align = "center">
</div>
<br><br>

<form id = "userInfo" action = "joinProcess.jsp" method='post' onsubmit="return Validation();">
	<table text-align ="center" align="center" border="1" width="800" height="600" cellspacing="0">
		<tr>
			<td bgcolor="beige" align="center" colspan="2" height="50"> <b>회원 정보</b></td>
			
		</tr>
		<tr>
			<td bgcolor="#c8d6e3" align="center" width="150">ID :</td>
			<td bgcolor="white"> <input type="text" size="20" name="id" id="id" minlength="4" maxlength="12"></td> 
		
		</tr>
		
		<tr>
			<td bgcolor="#c8d6e3" align="center" width="150">패스워드 :</td>
			<td bgcolor="white"> <input type="password" size="20" name="pw" id="pw" minlength="4" maxlength="12"></td> 
		
		</tr>

		<tr>
			<td bgcolor="#c8d6e3" align="center" width="150">패스워드 확인 :</td>
			<td bgcolor="white"> <input type="password" size="20" name="cpw" id="cpw" minlength="4" maxlength="12"></td> 
		
		</tr>
	
	
	
	</table>
	<br>
	<div align="center">
	
		<input type="submit" width="30" id="btn" value="전송">
		<input type="reset" onclick="alert('초기화 되었습니다.')" value="다시 입력">
	
	</div>
	


</form>
</body>
</html>
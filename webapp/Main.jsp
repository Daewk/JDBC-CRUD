<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%= session.getAttribute("id")  %> 님이 로그인한 상태입니다. </br>    

<%

	int login = (int)session.getAttribute("login");	

	System.out.println(login);
	out.println("<a href='logOut.jsp'> 로그아웃 </a><br><br>");
	
	if(login ==2){
		out.println("<a href='Memberlist.jsp'>"+"회원정보 DB 조회하기"+"</a>");
	}

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%


session.invalidate();
out.println("<script>alert('로그아웃 되었습니다.')</script>");
response.sendRedirect("loginForm.jsp");




%>
   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>

</body>
</html>
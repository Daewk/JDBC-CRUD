<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Arrays" %>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>    
 
 
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");


	Connection conn = null;
	String sql = "INSERT INTO user_info values(?,?)";


	int result =0;
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,pw);	
		
		if(pstmt.executeUpdate() !=0){
			result+=1;
		}
	
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	

%>   

<%

if (result == 1){
	out.println("<script>alert('회원가입 성공!')</script>");
	out.println("<script>location.href = 'loginForm.jsp'</script>");
	
	
}else{
	out.println("<script>alert('회원가입 실패!')</script>");	
	out.println("<script>location.href='joinForm.jsp'</script>");
}


%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 중...</title>
</head>
<body>

</body>
</html>
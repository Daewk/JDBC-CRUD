<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int result =0;
	
	Connection conn =null;
	String sql ="SELECT COUNT(id) AS result FROM user_info WHERE id=? AND pw=?";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			result = rs.getInt(1);
		}
		
		if(result ==1 && id.equals("admin")){
			result +=1;
		}
		
		if(result != 0){ // 0일 경우해당 아이디 없음
			session.setAttribute("login", result);
			session.setAttribute("id",id);
		}
		
	} catch(Exception e){
		e.printStackTrace();
	}

%>
<%
if(result==1){
	out.println("<script>alert('로그인 성공');</script>");
	out.println("<script>location.href='Main.jsp'</script>");
	
}else if(result ==2){
	out.println("<script>alert('관리자 로그인 성공')</script>");
	out.println("<script>location.href='Main.jsp'</script>");
}else{
	out.println("<script>alert('로그인 정보가 일치하지 않거나 존재하지 않는 아이디입니다.')</script>");
	out.println("<script>location.href='loginForm.jsp'</script>");
	
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login...</title>
</head>
<body>

</body>
</html>
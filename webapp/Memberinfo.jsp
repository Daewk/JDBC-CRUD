<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%


	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("var");
	Connection conn =null;
	String sql = "SELECT * FROM user_info WHERE id=?";
	
	try{
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
		conn = ds.getConnection();

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		
		ResultSet rs = pstmt.executeQuery();
		out.println("<h3>회원 정보</h3>");
		
		while(rs.next()){
			out.println("ID : "+rs.getString(1)+"<br>");
			out.println("PW : "+rs.getString(2)+"<br>");
			
			
			
		}
		
		
	}catch(Exception e){
		e.printStackTrace();
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
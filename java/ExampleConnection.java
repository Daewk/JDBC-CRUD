import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ExampleConnection {
	public static void main(String[] args) {
		
		
		Connection conn =null;
		String sql ="CREATE TABLE user_info(ID VARCHAR2(12) PRIMARY KEY, PW VARCHAR2(12));";
		String user = "dw";
		String password = "dwdw";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("클래스 로딩 성공!");
			
		    conn = DriverManager.getConnection(url,user,password);
			System.out.println("CONNECT completed!");
		
			
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
		
			
			ResultSet rs = pstmt.executeQuery();
			
			
			
		} catch(Exception e){
			e.printStackTrace();
		}

			

	}
}

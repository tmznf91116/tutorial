package ch10.logon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import work.crypt.SHA256;
import work.crypt.BCrypt;

public class LogonDBBean {
	private static LogonDBBean instance = new LogonDBBean();
	  
	//LogonDBBean 클래스의 객체 생성하고자 하는 기능
	public static LogonDBBean getInstance() {
		return instance;
	}
	    
	private LogonDBBean() {}
		
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest");
		return ds.getConnection();
	}
				 
	public int userCheck(String id, String passwd){
		Connection conn = null;
	    PreparedStatement pstmt = null;
		ResultSet rs= null;
		int x=-1;
	        
		SHA256 sha = SHA256.getInsatnce();
		try {
	        conn = getConnection();
	            
	        String orgPass = passwd;
	        String shaPass = shaPass(
	           "select passwd from member where id = ?");
	        pstmt.setString(1, id);
	        rs= pstmt.executeQuery();

			if(rs.next()){//해당 아이디가 있으면 수행
				String dbpasswd= rs.getString("passwd"); 
				if(BCrypt.checkpw(shaPass,dbpasswd))
					x= 1; //인증성공
				else
					x= 0; //비밀번호 틀림
			}else//해당 아이디 없으면 수행
				x= -1;//아이디 없음		
	    }catch(Exception ex) {
	        ex.printStackTrace();
	    }finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	        if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	        if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	    }
		return x;
	}
	private String shaPass(String string) {
		// TODO Auto-generated method stub
		return null;


}
}

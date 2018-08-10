<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>

<table>
  <tr  class="label">
  	<td>아이디
  	<td>비밀번호
  	<td>이름
  	<td>가입일자
  	<td>주소
  	<td>전화번호
  
<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  try{
	 String jdbcUrl="jdbc:mysql://localhost:3306/jsptest";
     String dbId="jspid";
     String dbPass="jsppass";
	 
	 Class.forName("com.mysql.jdbc.Driver");
	 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

	 String sql= "select * from member";
	 pstmt=conn.prepareStatement(sql);
	 rs=pstmt.executeQuery();

	 while(rs.next()){
	   String id= rs.getString(1);
       String passwd= rs.getString(2);
       String name= rs.getString(3);
       Timestamp register=rs.getTimestamp(4);
       String address= rs.getString(5);
       String tel= rs.getString(6);
%>
       <tr>
  	     <td><%=id%>
  	     <td><%=passwd%>
  	     <td><%=name%>
  	     <td><%=register.toString()%>
  	     <td><%=address%>
  	     <td><%=tel%>
<%  } 
  }catch(Exception e){ 
	 e.printStackTrace();
  }finally{
	 if(rs != null) 
	    try{rs.close();}catch(SQLException sqle){}
	 if(pstmt != null) 
		try{pstmt.close();}catch(SQLException sqle){}
	 if(conn != null) 
		try{conn.close();}catch(SQLException sqle){}
  }
%>
</table>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String userid =request.getParameter("userid");
	String pwd =request.getParameter("pwd");
	
	if(userid=="doccmsa"&& pwd =="1111"){

	out.println("1");
	}else if (userid != "doccmsa"){
		out.println("-1");
	}else if (pwd != "1111"){
		out.println("0");
	}
%>

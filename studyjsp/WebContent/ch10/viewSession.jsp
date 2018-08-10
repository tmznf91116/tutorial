<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<%
//String id =(String) session.getAttribute("id");

  Enumeration <String>attr = session.getAttributeNames();
  while(attr.hasMoreElements()){
	String attrName = attr.nextElement();// 8번 라인
	String attrValue = (String)session.getAttribute(attrName);// 8번 라인 같은의미 
	out.println("세션의 속성명은 " + attrName + " 이고 ");
	out.println("세션의 속성값은 " + attrValue + "이다.<br>");
  }
%>
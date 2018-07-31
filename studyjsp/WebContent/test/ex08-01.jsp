<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="ExTestBean" class="ex.ch08.ExTestBean">
     <jsp:setProperty name="ExTestBean" property="name"/>
     <jsp:setProperty name="ExTestBean" property="email"/>
     <jsp:setProperty name="ExTestBean" property="comment"/>
     <jsp:setProperty name="ExTestBean" property="passwd"/>
     
</jsp:useBean>

입력된 아이디: <jsp:getProperty name="ExTestBean" property="name"/><br/>
			<jsp:getProperty name="ExTestBean" property="email"/><br/>
			<jsp:getProperty name="ExTestBean" property="comment"/><br/>
			<jsp:getProperty name="ExTestBean" property="passwd"/><br/>
			
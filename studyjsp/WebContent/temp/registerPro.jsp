<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="testbean" class="temp.bean.testbean">
     <jsp:setProperty name="testbean" property="id"/>
     <jsp:setProperty name="testbean" property="pw"/>
     <jsp:setProperty name="testbean" property="name"/>
     <jsp:setProperty name="testbean" property="addr"/>
     
</jsp:useBean>

입력된 아이디: <jsp:getProperty name="testbean" property="id"/><br/>
			<jsp:getProperty name="testbean" property="pw"/><br/>
			<jsp:getProperty name="testbean" property="name"/><br/>
			<jsp:getProperty name="testbean" property="addr"/><br/>
			
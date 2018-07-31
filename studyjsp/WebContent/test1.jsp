<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
 <form method="post" action="test1.jsp">
<%if(session.getAttribute("id")==null){ %>
<div id = "un">
<dl>
<dd>
	<label for = "id"></label>
	<input id ="id" name ="id" type = "text"
	placeholder = "ehduq" autofocus required> 
</dd>
<dd>
	<label for = "pass">비밀번호</label>
	<input id = "pass" name= "pass"type = "password"
	placeholder="1234" required >
</dd>
<dd>
 	<input type = "submit" value = "로그인">
</dd>
</dl>
</div>
</form>

<%}else{//세션설정%>
<form method="post" action="logoutt.jsp">
<div id ="auth">
	<dl>
	<dd>
	<%= session.getAttribute("id") %>
	</dd>
	
	<dd>
	<input type = "submit" value = "로구아웃">
	</dd>
	</dl>
</div>
</form>

<%} %>
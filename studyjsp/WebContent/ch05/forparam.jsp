<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<% request.setCharacterEncoding("utf-8");%>

<h2> 포위당하는 페이지 : forwardParamTo.jsp</h2>

<% 
	String name = request.getParameter("name");
	String selectedColor = request.getParameter("color");
			
	String selectedPage =selectedColor +".jsp";

%>

<jsp:forward page = "<%=selectedColor%>">
	<jsp:param value="selectedColor" name="<%=selectedColor %>"/>
	<jsp:param name="name" value="<%=name%>"/>
</jsp:forward>
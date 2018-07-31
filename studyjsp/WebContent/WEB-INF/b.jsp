<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id= "doccomsa";
	String name= "이도엽";
	
%>

<a href="b.jsp?id=<%=id%>&name=<%=name%>>">get 방식</a>
</body>
</html>
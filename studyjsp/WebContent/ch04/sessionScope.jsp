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
	session.setAttribute("name", "홍길동");

//또하나의 새로운 request 요청이므로 
//위의 request 에 작업한 정보를  참조 할수가 없다 
	response.sendRedirect("sessioninfo.jsp");
%>

<%-- <a href="sessioninfo.jsp">sessionScope 정보확인</a>--%>
</body>
</html>
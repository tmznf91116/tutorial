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
	application.setAttribute("name", "홍길동");// 공유 하는 성격 

//또하나의 새로운 request 요청이므로 
//위의 request 에 작업한 정보를  참조 할수가 없다 
	response.sendRedirect("applicationinfo.jsp");
%>

<%-- <a href="applicationinfo.jsp">applicationScope 정보확인</a>--%>
</body>
</html>
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
	if (application.getAttribute("name")==null){
		
		out.println("정보가없다");
	}else {
		out.println(application.getAttribute("name"));
	}
%>
</body>
</html>
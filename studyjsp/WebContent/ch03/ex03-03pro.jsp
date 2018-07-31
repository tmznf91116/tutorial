<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> for 문 예제</h2>
<%

	int  number = Integer.parseInt(request.getParameter("number"));//4
	int  num = Integer.parseInt(request.getParameter("num"));//3
		
	long multiply =1 ;
	
	for (int i =0;i < num; i ++){
		multiply *= number; //multiply =multiply *number; 점점쌓이는 
	}
%>
<%= multiply %>
</body>
</html>
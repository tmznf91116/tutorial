<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	${error}
	<form action="LoginServlet" method="post">  
		<input type='hidden' name="orgPath" value="${orgPath }">
		Id:<input type="text" name="id"><br>  
		Password:<input type="password" name="password"><br>  
		<input type="submit" value="login">  
	</form>
</body>
</html>
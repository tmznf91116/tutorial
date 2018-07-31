<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-1.11.0.min.js"></script>
<script >
$(document).ready(function(){
	$("login").click(function(){
		var query = {
						userid : $("#userid").val(),
						pwd : $("#pwd").val()
					};
		
		
		$.ajax({
			tyep : "post",
			url: "loginPro.jsp",//1, 0, -1 
			data: query,
			success: function (data) {
				alert(data);
				
				if(data == 1 ){
					alert("로그인 성공");
			}
				else if (data == 0 )
					alert("비밀번호 틀리다");
				 $("pwd").val("");
				 $("pwd").focus();
				
			}
		else if{ (data == -1){
			alert("아이디틀림");
			$("#userid").val("");
			$("pwd").val("");
			$("#userid").focus();
		}
		}
		});
		
	});
});

</script>
</head>
<body>
<form >
	아이디 : <input type ="text" name ="userid" id = "userid"><br>
	비밀번호 :<input type ="password" name ="pwd"id = "pwd"><br>
		<button id = "login">로그인 </button>
	
</form>

</body>
</html>
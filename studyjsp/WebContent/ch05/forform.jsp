<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name= "viewport" content="width=device-width,initial-scale=1.0"/>


<form method ="post" action="forparam.jsp">
<label for= "name">이름</label>
<input id ="name" name="name" type ="text" placeholder="이도엽" autofocus required>
 
 <label for = "color"> 색선택</label>
 <select id = "color" name ="color" required>
 <option value = "blue" selected >파란색
  <option value = "green" >초록색
   <option value = "red"  >빨간색
    <option value = "yellow"  >노란색
 </select>
 <input type = "submit" value ="확인">
</form>
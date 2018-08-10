<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<h2>방명록</h2>
<form method="post" action="ex04pro.jsp">

<label for="name"> 이름 </label>
<input id= "name" name= "name" type ="text" placeholder="이도엽" autofocus><br>

<label for="content">내용</label>
<input id="content" name ="content" type = "text"
 placeholder="내용을 작성하시오" autofocus required><br>


<input type ="submit" value="등록">
<input type ="reset" value="다시쓰기">

</form>
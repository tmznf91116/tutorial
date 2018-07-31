<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="style.css"/>


   
  <form method="post" action="registerPro.jsp">
  
  <dl>
  <dd>
  	<label for ="name">아이디</label>
  	<input id="name" name="name" type ="text" size="20" 
  	maxlength="30" placeholder="example@kings.com" autofocus required><br/>
  	
  	<label for ="email">이메일</label>
  	<input id="email" name="email" type ="text" size="20" 
  	maxlength="30" placeholder="비밀번호" autofocus required><br/>
  	<label for ="comment">방문소감</label>
  	<input id="comment" name="comment" type ="text" size="20" 
  	maxlength="30" placeholder="이름" autofocus required>
  	<label for ="addr">주소</label><br/>
  	<input id="addr" name="addr" type ="text" size="20" 
  	maxlength="30" placeholder="주소" autofocus required><br/>
  	
  	
  	
  	
   <dd >
   <input type="submit" value="회원가입">
   <input type="reset" value="다시작성">
  </dl>
  
  </form>

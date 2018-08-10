<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="../css/style.css"/>
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="login.js"></script>

<%
String id ="";
try{
	//<script src="../js/jquery-1.11.0.min.js"></script> 자기 파일안에 경로 찾아가서 연결
	
	//id세션 속성의 값을 얻어내서 id변수에 저장
	//인증된 사용자의 경우  id세션 속성의 값 null또는 공백이 아님
	id = (String)session.getAttribute("id");//loginPro에서session.setAttribute("id",id);처리함
%>

<%if(id == null || id.equals("")){ //인증되지 않은 사용자 영역%>
  <div id="status">
     <ul>
        <li><label for="id">아이디</label>
            <input id="id" name="id" type="email" size="20" 
              maxlength="50" placeholder="example@kings.com">
        <li><label for="passwd">비밀번호</label>
            <input id="passwd" name="passwd" type="password" 
              size="20" placeholder="6~16자 숫자/문자" maxlength="16">
        <li class="label2">
            <button id="login">로그인</button>
            <button id="register">회원가입</button>
     </ul>
  </div>
<%}else{//인증된 사용자 영역  //이문장이 로그인하고나서 로구아웃 회원페이지 보여줌%>
  <div id="status">
     <ul>
        <li><b><%=id %></b>님이 로그인 하셨습니다.<!-- qwer님이 로그인 하셨습니다 으로 출력 -->
        <li class="label2"><button id="logout">로그아웃</button>
           <button id="update">회원 정보 변경</button>
     </ul>
  </div>
<%}}catch(Exception e){e.printStackTrace();}%>

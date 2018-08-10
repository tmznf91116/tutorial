<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="../css/style.css"/>


<script src="../js/jquery-1.11.0.min.js"></script><!-- 경로로 나가서 js 에 있는파일을 연결 -->

<div id="main_image" class="box">
 
  <img class="noborder" id="logo" src="mollahalf.png"/></div>

<div id="main_auth" class="box"><jsp:include page="loginForm.jsp"/></div>
<!--  div id="main_auth =에 레지스터 jsp id 로 연결 계속 돌아감  include  foward 차이는 ?-->

<!-- 에러 확인
	1.단계별 웹 검사
	2.오류명 확인  
	3.오류 나올시는 파일 아는것 나오면 클릭후 그 문법 확인
	4.sql 문법 오류는 sql 이라고 나옴 
	window.location.href is not a function <구글은 지원안해주는 코드 바꿔줘야함>
	class나 파운드 오류  ojdbc 파일 다시 삭제후 파일 넣기 <가끔 오류 찾기어려움>
-->
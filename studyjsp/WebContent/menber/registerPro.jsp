<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "menber.logon.LogonDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<link rel="stylesheet" href="../css/style.css"/>
<script src="../js/jquery-1.11.0.min.js"></script>

<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="member" class="menber.logon.LogonDataBean"><!-- class 참조하는게 달라서 오류 -->
    <jsp:setProperty name="member" property="*" />
</jsp:useBean>
<!-- 다받아오기 어려워 위에 3줄 작성 -->
<%  
  //폼으로 부터 넘어오지 않는 데이터인 가입날짜를 직접 데이터저장빈에 세팅
  member.setReg_date(new Timestamp(System.currentTimeMillis()));

  LogonDBBean manager = LogonDBBean.getInstance();
  //사용자가 입력한 데이터저장빈 객체를 가지고 회원가입 처리 메소드호출
  manager.insertMember(member);//LogonDBBean manager LogonDBBean.getInstance(); 만듬으로써LogonDBBean에서 insertMember 이메소드 생성 
%>
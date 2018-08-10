<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "menber.logon.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8");%>
<% 
   //사용자의 id값은 세션속성값으로부터 얻어냄
   String id = (String)session.getAttribute("id");// 로그인했던 아이디를 session 형태로 읽어옴 이미 로그인 상태이기에 비밀번호 입력받으면된다
   String passwd = request.getParameter("passwd");

   LogonDBBean manager = LogonDBBean.getInstance();
   int check = manager.userCheck(id, passwd);// 이부분은 LogonDBBean 먼저 userCheck 만들어야됨
   
   out.println(check);// 문자열이 웹에 출력해줌
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "menber.logon.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<%
  //사용자가 입력한 아이디와 비밀번호
  String id = request.getParameter("id");
  String passwd  = request.getParameter("passwd");
 		//String id="tmznf9116@naver.com";
		// String passwd ="1234"; ->이걸로 인하여 아이디 패스워드 들어왔는지 확인 할수 있음
 
	LogonDBBean manager = LogonDBBean.getInstance();//아이디존재하는지 안하는지 유무체크 메소드 userCheck 만들어야함 DBBean가서
  	int check= manager.userCheck(id,passwd);//사용자인증처리 메소드- >
  	//결국이두문장 LogonDBBean에 public private 로 하나만 만들어서 //userCheck 실행하기 위함 
  	

  if(check==1)//사용자인증에 성공시 세션속성을 설정
	session.setAttribute("id",id);

  out.println(check);//처리결과를 반환
%>
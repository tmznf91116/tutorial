

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "menber.logon.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<% 

// 이파일  만들기전 LogonDBBean 에 이파일기능 필요



	
//id는 사용자가 회원가입을 하기위해서 입력한 아이디
// String id = request.getParameter("id");
//이런 ajox 파일은 개별적으로 나오는지 검증후에 작성 후에 어디가 오류났는지 구분이안감 

	String id = "nesdasd@nate.com";
	//=1이나옴  다른코드가 나올시 참조할때 1 있으면 1 없으면 -1 말고 다른게 참조되서  레지스터 js 파일에 오류 발생
 	//1 -1 나오게 하는 코드는 어디 ?
		  
  //DB처리빈인 LogonDBBean클래스의 객체를 얻어낸다.
  LogonDBBean manager = LogonDBBean.getInstance();
  
  //사용자가 입력한 id값을 가지고 LogonDBBean클래스의 confirmId()메소드 호출
  //중복아이디 체크  confirmId()메소드의 실행결과로 check에는 1또는 -1값이 리턴됨
  int check= manager.confirmId(id);
  
  out.println(check);//처리 결과를 register.js로 리턴
  //html 언어가 있으면 같이 출력해서 있으면 안됨 ajox 는 html 있으면안됨 
 %>

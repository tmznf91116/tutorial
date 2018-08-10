<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch11.logon.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8");%>
<%-- 7~9라인: 수정된 정보를 가지고 데이터저장빈객체를 생성--%>
<jsp:useBean id="member" class="ch11.logon.LogonDataBean">
    <jsp:setProperty name="member" property="*" />
</jsp:useBean> <!--  150줄이면 150줄 작성해야 하나 그런부분을 없애줌  -->

<%  
  LogonDBBean manager = LogonDBBean.getInstance();
  //회원정보 수정 처리 메소드 호출 후 수정 상황값 반환
  int check = manager.updateMember(member);
    
  out.println(check);// 메소드에 리턴같은 
 %>
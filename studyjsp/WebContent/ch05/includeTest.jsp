<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
 
<% request.setCharacterEncoding("utf-8");%>



<% request.setAttribute("id", "참조 출력한다 ");%>

<% String pageName = request.getParameter("pageName");%>
   포함하는 페이지 includeTest.jsp 입니다.<br>

<hr>
<jsp:include page="<%=pageName%>"  flush="false"/>
includeTest.jsp의 나머지 내용입니다.
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>


<form method="post" action="ex04-01.jsp">
<div id= "aaa">
<dl>
<dd>
<label for ="name1">이름</label>
<input id="name1" name= "name" type = "text"
 placeholder="홍길동" autofocus  >
</dd>
</dl>

<dl>
<dd>
<label for = "content">내용</label>
<input id = "content" name="content" type="button"
		placeholder="1234" > 
</dd>
</dl>
</div>
</form>

<form method="post" action="ex04-01.jsp">
  <div id="auth">
  <dl>
    <dd>
      <%=session.getAttribute("id")%>님 오셨구려..
    </dd>
    <dd>
      <input type="submit" value="로그아웃">
    </dd>
  </dl>
  </div>
</form>


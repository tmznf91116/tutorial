<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<h2> request 예제- 요청메소드</h2>
<form action="testrequest1.jsp" method="post">
<dl>
<dd>
<label for ="name">이름</label>
<input name ="name" id ="name" type= "text"
placeholder="화면에 아이디 보여줘" autofocus required> 
<input id="age" name ="age" type="text"
placeholder="화면에 아이디 보여줘" autofocus required>

<fieldset>
<legend>성별 </legend>
<input id= "gender" name ="gender" type="radio"value="m" checked>
<label for="gender">남</label>
<input id= "gender" name ="gender" type="radio" value="f">
<label for="gender">여</label>
</fieldset>

<label for ="age">취미</label>

<select id = "hobby" name ="hobby" required>
<option value ="잠자기" selected> 잠자기
<option value = "책읽기">책읽기
<option value = "프라모델">프라모델
<option value = "건프라">건프라

</select>

<input type="submit" value="전송">

<dd>

</dl>

</form>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<h1>アカウントを作成</h1>

<form action="registered.jsp" method="post">

  <p class="name">氏名</p>
  <input type="text" name="name">

  <p>企業名</p>
  <input type="text" name="com_name">
  <p>株式会社大原</p>

  <p>所在地</p>
  <input type="text" name="address">

  <p>携帯電話番号・メールアドレス</p>
  <input type="text" name="email">

  <p>パスワード</p>
  <input type="text" name="pass">

  <p>もう一度パスワード</p>
  <input type="text" name="onemore">

  <input type="submit" value="編集を完了">
</form>

<%@include file="../footer.jsp" %>
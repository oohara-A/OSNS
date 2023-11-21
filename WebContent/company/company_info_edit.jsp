<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="company_top_page.jsp" method="post">

<div class="com_inforedit">
<h2 class="info._edit">企業情報編集</h2>
</div>

<div class ="society">
  <p class="society_name">氏名</p>
  <input type="text" name="name">
</div>

<div class="com_name">
  <p class="com_title">企業名</p>
  <input type="text" name="com_name">
  <p>株式会社大原</p>
</div>

<div class="address">
  <p class="address_name">所在地</p>
  <input type="text" name="address">
</div>

<div class="com_email">
  <p class="address_name">携帯電話番号・メールアドレス</p>
  <input type="text" name="email">
</div>

<div class="pass">
  <p class="password">パスワード</p>
  <input type="text" name="pass">
</div>

<div class="next_pass">
  <p class="next_password">もう一度パスワード</p>
  <input type="text" name="onemore">
</div>

<div class="registration_button">
  <input class="reg_button" type="submit" value="登録">
</div>

</form>

<%@include file="../footer.jsp" %>
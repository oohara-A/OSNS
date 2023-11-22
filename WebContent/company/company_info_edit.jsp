<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="company_top_page.jsp" method="post">

<div class="comed_inforedit">
<h2 class="info._edit">企業情報編集</h2>
</div>

<div class ="com_full_name">
  <p class="comfull_name">氏名</p>
  <input type="text" name="comed_fullname">
</div>

<div class="com_name">
  <p class="comname">企業名</p>
  <input type="text" name="comed_name">
  <p>株式会社大原</p>
</div>

<div class="com_address">
  <p class="comaddress">所在地</p>
  <input type="text" name="comed_address">
</div>

<div class="com_mobile">
  <p class="commobile">携帯電話番号・メールアドレス</p>
  <input type="text" name="comed_mobile">
</div>

<div class="com_password">
  <p class="compassword">パスワード</p>
  <input type="text" name="comed_password">
</div>

<div class="next_com_password">
  <p class="next_compassword">もう一度パスワード</p>
  <input type="text" name="onemore">
</div>

<div class="reg_button">
  <input class="regbutton" type="submit" value="登録">
</div>

</form>

<%@include file="../footer.jsp" %>
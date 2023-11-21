<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="registered.jsp" method="post">

<h2 class="com_registration">企業登録</h2>

<div class="com_full_name">
   <p class="comfull_name">氏名</p>
   <input type="text" name="name">
</div>

<div class="com_name">
   <p class="comname">企業名</p>
   <input type="text" name="com_name">
</div>

<div class="com_address">
   <p class="comaddress">所在地</p>
   <input type="text" name="address">
</div>

<div class="com_mobile">
   <p class="commobile">携帯電話番号・メールアドレス</p>
   <input type="text" name="email">
</div>

<div class="com_password">
   <p class="compassword">パスワード</p>
   <input type="text" name="pass">
</div>

<div class="next_com_password">
   <p class="next_compassword">もう一度パスワード</p>
   <input type="text" name="onemore">
</div>

<div class="go_next">
   <input class="gonext" type="submit" value="次に進む">
</div>

</form>

<%@include file="../footer.jsp" %>
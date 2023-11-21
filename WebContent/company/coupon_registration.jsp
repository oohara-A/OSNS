<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="CouponRegistrationServlet" method="post">

<div class="back_home">
   <input class="backhome" type="submit" value="ホームに戻る">
</div>

<div class="coupon">
<h2 class="coupon_registration">クーポン登録</h2>
</div>

<div class="coupon_name">
  <p class="cou_name">クーポン名</p>
  <input type="text" name="couponName">
</div>

<div class="coupon_code">
  <p class="cou_code">クーポンコード</p>
  <input type="text" name="couponCode">
</div>

<div class="issue_number">
  <p class="issue_count">発行数</p>
  <input type="date" name="coupon_issue_number">
</div>

<div class="discount_factor">
  <p class="discount_rate">割引率</p>
  <input type="number" name="coupon_discount" min="1" max="100"> %
</div>

<div class="registration_button">
  <input class="register_button" type="submit" value="登録">
</div>

</form>

<%@include file="../footer.jsp" %>
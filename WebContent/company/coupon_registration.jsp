<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<div class="coupon">
<h2>クーポン登録</h2>
</div>

<form action="CouponRegistrationServlet" method="post">

  <p>クーポン名</p>
  <input type="text" name="couponName">

  <p>クーポンコード</p>
  <input type="text" name="couponCode">

  <p>発行数</p>
  <input type="date" name="issue_number">

  <p>割引率</p>
  <input type="number" name="discountRate" min="1" max="100"> %

  <input type="submit" value="登録">
</form>

<%@include file="../footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="CouponRegistrationServlet" method="post">

<div class="coupon_registration">

	<div class="back_home">
    	<a href="../company_top_page" style="padding-right: 10px;">
        	<input class="backhome" type="submit" value="ホームに戻る">
    	</a>
	</div>

	<h2 class="coupon_title">クーポン登録</h2>

		<div class="coupon_reg">
			<p class="couponreg">クーポン名</p>
			<input type="text" name="couponName">
		</div>

		<div class="coupon_reg">
			<p class="couponreg">クーポンコード</p>
			<input type="text" name="couponCode">
		</div>

		<div class="coupon_reg">
			<p class="couponreg">発行数</p>
			<input type="date" name="coupon_issue_number">
		</div>

		<div class="coupon_reg">
			<p class="couponreg">割引率</p>
			<input type="number" name="coupon_discount" min="1" max="100"> %
		</div>

		<div class="registration_button">
			<input class="register_button" type="submit" value="登録">
		</div>

</div>

</form>

<%@include file="../footer.jsp" %>
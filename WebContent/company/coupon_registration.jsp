<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>

<form action="Coupon_issuing_creation.action" method="post">

	<div class="coupon_registration">

		<div class="back_home">
			<a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
		</div>

		<h2 class="coupon_title">クーポン登録</h2>

		<div class="coupon_reg">
			<p class="couponreg">クーポン名</p>
			<input type="text" name="coupon_name">
		</div>

		<div class="coupon_reg">
			<p class="couponreg">クーポンコード</p>
			<input type="text" name="coupon_code">
		</div>

		<div class="coupon_reg">
			<p class="couponreg">発行数</p>
			<input type="date" name="coupon_issue_number">
		</div>

		<div class="coupon_reg">
			<p class="couponreg">割引率</p>
			<input type="number" name="coupon_discount" min="1" max="100">
		</div>

		<div class="registration_button">
			<input class="register_button" type="submit" value="登録">
		</div>
	</div>
</form>
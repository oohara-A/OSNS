<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>
<style>
.coupon_regist {
    width: 80%;
    padding: 20px;
    border: 1px solid #ccc;
    margin: 0 auto;
    margin-top: 5%;
    max-width: 600px;
    font-family: Arial, sans-serif;
    background-color: #f7f7f7;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.registration_button .register_button {
    background-color: blue;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    width: 40%;
}

</style>

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">

<form action="Coupon_issuing_creation.action" method="post">

	<div class="coupon_regist">

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
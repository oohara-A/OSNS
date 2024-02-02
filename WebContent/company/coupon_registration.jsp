<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@include file="../com_header.jsp"%>
=======
<%@include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<form action="Coupon_issuing_creation.action" method="post">

	<div class="coupon_registration">

		<div class="back_home">
<<<<<<< HEAD
			<a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
=======
			<a href="../company_top_page" style="padding-right: 10px;"> <input
				class="backhome" type="submit" value="ホームに戻る">
			</a>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
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
<<<<<<< HEAD
=======
			%
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		</div>

		<div class="registration_button">
			<input class="register_button" type="submit" value="登録">
		</div>
<<<<<<< HEAD
	</div>
</form>
=======

	</div>

</form>

<%@include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

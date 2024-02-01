<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../com_header.jsp" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<div class="content">

	<div class="menu">

		<div class="image">
		    <img alt="Company Logo" name="logo" src="../assets/image/OSNS_Logo.png">
		</div>

		<div class="com_button">
			<button class="combutton" name="coupon_list" onclick="location.href='coupon_list.jsp'">クーポン一覧</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="coupon_regi" onclick="location.href='coupon_registration.jsp'">クーポン登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="company_info" onclick="location.href='company_info_edit.jsp'">企業情報</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="product_regi" onclick="location.href='product_registration.jsp'">商品登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="product_list" onclick="location.href='product_summary.jsp'">商品一覧</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="company_regi" onclick="location.href='company_registration.jsp'">企業登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="deregistration" onclick="location.href='company_delete.jsp'">登録解除</button>
		</div>

		<div class="com_button">
		    <button class="combutton" name="inquiry" onclick="location.href='inquiry.jsp'">お問い合わせ</button>
		</div>

	</div>

</div>

</body>
</html>
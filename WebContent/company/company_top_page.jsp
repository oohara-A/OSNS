<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<div class="content">

		<div class="menu">

			<div class="image">
				<img alt="Company Logo" src="../assets/image/OSNS_Logo.png">
			</div>

			<div class="com_button">
				<a href="Display_coupon_list.action"><button class="combutton" >クーポン一覧</button></a>
			</div>

			<div class="com_button">
				<button class="combutton"
					onclick="location.href='coupon_registration.jsp'">クーポン登録</button>
			</div>

			<div class="com_button">
				<a href="Companyinfodisp.action"><button class="combutton">企業情報</button></a>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='product_registration.jsp'">商品登録</button>
			</div>

			<div class="com_button">
				<a href="Product_list.action"><button class="combutton">商品一覧</button></a>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='company_delete.jsp'">登録解除</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='inquiry.jsp'">お問い合わせ</button>
			</div>

		</div>

		<div class="main">

		<form action="Logout.action" method="post">
			<div class="logout">
				<button class="logout">ログアウト</button>
			</div>
		</form>

			<div class="com_title">
				<h2 class="com_top">企業トップ</h2>
			</div>
		</div>

	</div>

	<%@include file="../com_footer.jsp"%>

</body>
</html>
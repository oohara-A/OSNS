<<<<<<< HEAD
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../com_header.jsp" %>

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f

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
				<button class="combutton" onclick="location.href='coupon_list.jsp'">クーポン一覧</button>
			</div>

			<div class="com_button">
				<button class="combutton"
					onclick="location.href='coupon_registration.jsp'">クーポン登録</button>
			</div>

			<div class="com_button">
				<button class="combutton"
					onclick="location.href='company_info_edit.jsp'">企業情報</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='product_registration.jsp'">商品登録</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='.jsp'">商品一覧</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='company_registration.jsp'">企業登録</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='company_delete.jsp'">登録解除</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='inquiry.jsp'">お問い合わせ</button>
			</div>

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f
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
<<<<<<< HEAD
=======
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
>>>>>>> 69dea079de001152180afc907db1978b275e73a6

<<<<<<< HEAD
		<div class="com_button">
<<<<<<< HEAD
		    <button class="combutton" onclick="location.href='product_registration.jsp'">商品登録</button>
=======
		    <button class="combutton" name="product_regi" onclick="location.href='product_registration.jsp'">商品登録</button>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
		</div>
=======
			<div class="com_info">
				<p class="user_information">ユーザー情報</p>
			</div>
>>>>>>> 06994444a6f38efc7ada0ec330c15b38de3bf1c5

<<<<<<< HEAD
			<div class="user_info">
				<p class="com_user">氏名▶</p>
				<input type="text" name="name">
				<p class="com_user">企業名▶</p>
				<input type="text" name="com_name">
				<p class="com_user">所在地▶</p>
				<input type="text" name="address">
				<p class="com_user">メールアドレス▶</p>
				<input type="email" name="email">
			</div>
=======
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
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f
		</div>

	</div>

<<<<<<< HEAD
<<<<<<< HEAD
	<footer> &copy; 2023 OharaSampleNetShop. All rights reserved.
	</footer>
=======
	<div class="main">

		 <div class="logout">
        	<a href="/logout">ログアウト</a>
    	</div>

		<div class="corporate">
			<h2 class="corporate_top">企業トップ</h2>
		</div>
	</div>

</div>

<footer>
    &copy; 2023 OharaSampleNetShop. All rights reserved.
</footer>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6




	<%@include file="../footer.jsp"%>
=======
	<%@include file="../com_footer.jsp"%>
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

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
		    <button class="combutton" onclick="location.href='coupon_registration.jsp'">クーポン登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='company_info_edit.jsp'">企業情報</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='.jsp'">商品登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='.jsp'">商品一覧</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='.jsp'">企業登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='.jsp'">登録解除</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='inquiry.jsp'">お問い合わせ</button>
		</div>

	</div>

	<div class="main">

		 <div class="logout">
        	<a href="/logout">ログアウト</a>
    	</div>

		<div class="com_title">
			<h2 class="com_top">企業トップ</h2>
		</div>

		<div class="com_info">
			<p class="user_information">ユーザー情報</p>
		</div>

    	<div class="user_info">
        	<p class="com_user">氏名▶</p><input type="text" name="name">
        	<p class="com_user">企業名▶</p><input type="text" name="com_name">
        	<p class="com_user">所在地▶</p><input type="text" name="address">
        	<p class="com_user">メールアドレス▶</p><input type="email" name="email">
    	</div>
	</div>

</div>

<footer>
    &copy; 2023 OharaSampleNetShop. All rights reserved.
</footer>




    <%@include file="../footer.jsp" %>

</body>
</html>
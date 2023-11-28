<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>企業トップ</title>
    <style>
        /* Your existing styles */
    </style>
</head>
<body>

<div class="com_title">
	<h2 class="com_top">企業トップ</h2>
</div>

<div class="user_info">
    <p class="com_user">ユーザー情報</p>
    <p>Your User ID: </p>
</div>

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
    <button class="combutton" onclick="location.href='.jsp'">企業情報</button>
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

<footer>
    &copy; 2023 OharaSampleNetShop. All rights reserved.
</footer>

    <%@include file="../footer.jsp" %>

</body>
</html>
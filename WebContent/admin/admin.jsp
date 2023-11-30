<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<!DOCTYPE html>
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
			<button class="combutton" onclick="location.href='.jsp'">企業一覧</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='coupon_registration.jsp'">レビュー一覧</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='company_info_edit.jsp'">ユーザー一覧</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='.jsp'">管理者登録</button>
		</div>

		<div class="com_button">
		    <button class="combutton" onclick="location.href='.jsp'">管理者削除</button>
		</div>
	</div>

	<div class="main">

		 <div class="logout">
        	<a href="/logout">ログアウト</a>
    	</div>

		<div class="admin_title">
			<h2 class="admin_top">管理者トップ</h2>
		</div>

		<div class="com_info">
			<p class="user_information">ユーザー情報</p>
		</div>

    	<div class="user_info">
        	<p class="com_user">氏名▶</p><input type="text" name="name">
        	<p class="com_user">登録日▶</p><input type="text" name="reg_date">
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
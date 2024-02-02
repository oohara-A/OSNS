<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@include file="../admin_header.jsp"%>
	<div class="content">

		<div class="menu">

			<div class="image">
				<img alt="Company Logo" src="../assets/image/OSNS_Logo.png">
			</div>

			<div class="com_button">
				<a href="Showcompany.action"><button class="combutton" >企業一覧</button></a>
			</div>

			<div class="com_button">
				<a href="Showreview.action"><button class="combutton">レビュー一覧</button></a>
			</div>

			<div class="com_button">
				<a href="Showuser.action"><button class="combutton">ユーザー一覧</button></a>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='add_admin.jsp'">管理者登録</button>
			</div>

			<div class="com_button">
				<a href="Remove.action"><button class="combutton" >管理者削除</button></a>
=======
<%@include file="../menu.jsp"%>

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
				<button class="combutton"
					onclick="location.href='coupon_registration.jsp'">レビュー一覧</button>
			</div>

			<div class="com_button">
				<button class="combutton"
					onclick="location.href='company_info_edit.jsp'">ユーザー一覧</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='.jsp'">管理者登録</button>
			</div>

			<div class="com_button">
				<button class="combutton" onclick="location.href='.jsp'">管理者削除</button>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
			</div>
		</div>

		<div class="main">

			<div class="logout">
<<<<<<< HEAD
				<a href="Logout.action">ログアウト</a>
=======
				<a href="/logout">ログアウト</a>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
			</div>

			<div class="admin_title">
				<h2 class="admin_top">管理者トップ</h2>
			</div>

			<div class="com_info">
				<p class="user_information">管理者情報</p>
			</div>

			<div class="user_info">
				<p class="com_user">氏名▶</p>
<<<<<<< HEAD
				<input type="text" name="name" >
				<p class="com_user">登録日▶</p>
				<input type="text" name="reg_date" >
				<p class="com_user">メールアドレス▶</p>
				<input type="email" name="email" >
=======
				<input type="text" name="name">
				<p class="com_user">登録日▶</p>
				<input type="text" name="reg_date">
				<p class="com_user">メールアドレス▶</p>
				<input type="email" name="email">
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
			</div>
		</div>

	</div>

	<footer> &copy; 2023 OharaSampleNetShop. All rights reserved.
	</footer>

<<<<<<< HEAD
	<%@include file="../footer.jsp"%>
=======



	<%@include file="../footer.jsp"%>

</body>
</html>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

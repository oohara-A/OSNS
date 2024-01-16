<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>

<form action="Login.action" method="post">

	<h2 class="com_title">ログイン</h2>

	<div class="log">
		<p class="login">ユーザー名</p>
		<input type="text" name="inq_name" required>
		<p class="login">メールアドレス</p>
		<input type="email" name="inq_name">
	</div>

	<div class="log">
		<p class="login">パスワード</p>
		<input type="text" name="inq_com_name" required>
	</div>
<<<<<<< HEAD
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
<title>admin_login</title>
<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="Login.action" method="post">

    <h2 class="login_title">ログイン</h2>

		<div class="log">
	      <p class="login">メールアドレス</p>
	      <input type="email" name="email">
	    </div>

		<div class="log">
	      <p class="login">パスワード</p>
	      <input type="text" name="password" required>
	    </div>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f

	<div class="logged">
		<input type="checkbox" name="logged">
		<p class="logged_in">ログインしたままにする</p>
	</div>

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>


</form>

<<<<<<< HEAD
<%@include file="../footer.jsp"%>
=======
		<div class="log_button">
  			<input class="all_login" type="submit" name="new_acount" value="ログイン">
		</div>


</form>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
=======
<%@include file="../footer.jsp"%>
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f

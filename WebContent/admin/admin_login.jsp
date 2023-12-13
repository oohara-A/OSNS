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

	    <div class="logged">
	    	<input type="checkbox" name="logged">
	    	<p class="logged_in">ログインしたままにする</p>
		</div>

		<div class="log_button">
  			<input class="all_login" type="submit" name="new_acount" value="ログイン">
		</div>


</form>

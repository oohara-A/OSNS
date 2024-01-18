<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<form action="Login.action" method="post">

	<h2 class="com_title">ログイン</h2>
	<div class="log">
		<p class="login">メールアドレス</p>
		<input type="email" name="inq_name">
	</div>
	<div class="log">
		<p class="login">パスワード</p>
		<input type="text" name="inq_com_name" required>
	</div>
	<div class="logged">
		<input type="checkbox" name="logged">
		<p class="logged_in">ログインしたままにする</p>
	</div>
	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>

</form>

<<<<<<< HEAD
<%@include file="../footer.jsp"%>
=======
<%@include file="../footer.jsp"%>
>>>>>>> 8bb6f1ff6ee19b6530e1890ba8dc9320d42daf47

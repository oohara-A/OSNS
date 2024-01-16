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

	<div class="logged">
		<input type="checkbox" name="logged">
		<p class="logged_in">ログインしたままにする</p>
	</div>


	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>


</form>

<%@include file="../footer.jsp"%>
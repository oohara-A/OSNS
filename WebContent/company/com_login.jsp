<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>

<form action="<%=request.getContextPath() %>/user/index.jsp" method="post">
	<div class="back_home">
		<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<form action="Login_company.action" method="post">

	<h2 class="login_title">ログイン</h2>

	<div class="login_all">

		<div class="log">
			<p class="login">メールアドレス</p>
		<input type="email" name="email">
		</div>
		<div class="log">
			<p class="login">パスワード</p>
			<input type="text" name="password">
		</div>

		<div class="logged">
			<input type="checkbox" name="logged">
			<p class="logged_in">ログインしたままにする</p>
		</div>

		<div class="log_button">
			<input class="all_login" type="submit" name="login" value="ログイン">
		</div>
		</div>
</form>


<form action="company_registration.jsp" method="post">
	<div class="com">
		<p class="new_acount">企業登録の方はこちらをクリック↓</p>

		<div class="acount">
			<input class="all_acount" type="submit" name="new_acount"
				value="アカウントを作成する">
		</div>
	</div>
	</form>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="Login_company.action" method="post">

    <h2 class="com_title">ログイン</h2>

		<div class="log">
	      <p class="login">メールアドレス</p>
	      <input type="text" name="email">
	    </div>

		<div class="log">
	      <p class="login">パスワード</p>
	      <input type="text" name="password">
	    </div>

	    <div class="logged">
	    	<input type="checkbox" name="logged">
	    	<p class="logged_in">ログインしたままにする</p>
		</div>


		<div class="inq_sending">
  			<input class="sending" type="submit" value="ログイン">
		</div>
</form>

<form action="company_registration.jsp" method="post">

		<p class="new_acount">企業登録の方はこちらをクリック↓</p>

		<div class="inq_sending">
  			<input class="sending" type="submit" value="アカウントを作成する">
		</div>
</form>

<%@include file="../footer.jsp" %>
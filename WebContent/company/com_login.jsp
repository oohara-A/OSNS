<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
<title>company_login</title>
<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6

<form action="Login_company.action" method="post">

	<h2 class="login_title">ログイン</h2>

	<div class="login_all">

		<div class="log">
<<<<<<< HEAD
			<p class="login">メールアドレス</p>
		<input type="email" name="email">
		</div>
=======
	      <p class="login">メールアドレス</p>
	      <input type="email" name="email">
	    </div>

>>>>>>> 69dea079de001152180afc907db1978b275e73a6
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
<<<<<<< HEAD
		</div>
</form>


<form action="company_registration.jsp" method="post">
=======
	</div>

</form>

>>>>>>> 69dea079de001152180afc907db1978b275e73a6
	<div class="com">
		<p class="new_acount">企業登録の方はこちらをクリック↓</p>

		<div class="acount">
<<<<<<< HEAD
			<input class="all_acount" type="submit" name="new_acount"
				value="アカウントを作成する">
		</div>
	</div>
</form>

<%@include file="../footer.jsp"%>
=======
  			<a href="company_registration.jsp"><input class="all_acount" type="submit" name="new_acount" value="アカウントを作成する"></a>
		</div>
	</div>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6

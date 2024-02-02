<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@include file="../com_header.jsp"%>

<form action="company_top_page.jsp" method="post">
	<div class="back_home">
		<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>
=======
<%@include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<form action="company/Login_company.action" method="post">

	<h2 class="login_title">ログイン</h2>

	<div class="login_all">

		<div class="log">
<<<<<<< HEAD
			<p class="login">メールアドレス</p>
		<input type="email" name="email">
		</div>
=======
<<<<<<< HEAD
			<p class="login">メールアドレス</p>
			<<<<<<< HEAD <input type="email" name="email"> ======= <input
				type="text" name="inq_name"> >>>>>>>
			f49713779204c6034678be1193948446b6e03908
		</div>
=======
	      <p class="login">メールアドレス</p>
	      <input type="text" name="email">
	    </div>
>>>>>>> e01b2f8c01ac85a2e0dedbf2850153a4440fbe3c

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
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

=======
	</div>
</form>

<form action="company_registration.jsp" method="post">
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<form action="company_registration.jsp" method="post">
	<div class="com">
		<p class="new_acount">企業登録の方はこちらをクリック↓</p>

		<div class="acount">
			<input class="all_acount" type="submit" name="new_acount"
				value="アカウントを作成する">
		</div>
	</div>
<<<<<<< HEAD
	</form>
=======
</form>

<%@include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

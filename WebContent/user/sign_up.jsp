<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="osns/WebContent/assets/common.css">
<h1>アカウントを作成</h1>
<p>氏名</p>
<form action="Newreg.action" method="post">
	<input type="text" name="account_name" required="required">

	<p>ユーザ名</p>
	<input type="text" name="account_user" required="required">

	<p>携帯電話番号・メールアドレス</p>

	<input type="text" name="account_email" required="required">

	<p>パスワード</p>

	<input type="text" name="account_password" required="required">

	<p>もう一度パスワード</p>

	<input type="text" name="onemore" required="required">

	<p>利用規約・プライバシー規約</p>

	<input type="text" name="terms"> <input type="submit"
		value="登録">
</form>

<%@include file="../footer.jsp"%>
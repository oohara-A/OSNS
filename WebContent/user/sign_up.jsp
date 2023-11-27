<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>

<link rel="stylesheet" type="text/css" href="osns/WebContent/assets/common.css">
<h1>アカウントを作成</h1>
<p>氏名</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="name">

<p>携帯電話番号・メールアドレス</p>

<input type="text" name="email">

<p>パスワード</p>

<input type="text" name="pass">

<p>もう一度パスワード</p>

<input type="text" name="onemore">

<p>利用規約・プライバシー規約</p>

<input type="text" name="terms_of_use">

<input type="submit" value="登録">
</form>

<%@include file="../footer.jsp" %>
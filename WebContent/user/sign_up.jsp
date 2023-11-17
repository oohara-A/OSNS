<<<<<<< HEAD
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.jsp" %>

<title>新規登録</title>
<link rel="stylesheet" type="text/css" href="osns/WebContent/assets/common.css">
<h1>アカウントを作成</h1>
<p>氏名</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="name">
</form>
<p>携帯電話番号・メールアドレス</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="email">
</form>
<p>パスワード</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="pass">
</form>
<p>もう一度パスワード</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="onemore">
</form>
<p>利用規約・プライバシー規約</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="terms_of_use">
</form>

<form>
<input type="submit" value="登録">
</form>

<%@include file="../footer.jsp" %>
=======
<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

<title>新規登録</title>
<link rel="stylesheet" type="text/css" href="osns/WebContent/assets/common.css">
<h1>アカウントを作成</h1>
<p>氏名</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="name">
</form>
<p>携帯電話番号・メールアドレス</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="email">
</form>
<p>パスワード</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="pass">
</form>
<p>もう一度パスワード</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="onemore">
</form>
<p>利用規約・プライバシー規約</p>
<form action="new_reg_out.jsp" method="post">
<input type="text" name="terms_of_use">
</form>

<form>
<input type="submit" value="登録">
</form>

<%@include file="../footer.html" %>
>>>>>>> branch 'main' of https://github.com/oohara-A/OSNS.git

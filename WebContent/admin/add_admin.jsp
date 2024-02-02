<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ include file="../admin_header.jsp"%>
=======
<%@ include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<div class="back_home">
	<a href="admin.jsp"><input class="backhome" type="submit" value="ホームに戻る"></a>
</div>
<form action="Add.action" method="post">

	<h2 class="admin_title">管理者を追加</h2>
	<div class="contact_us">
		<p class="add">お名前</p>
		<input type="text" name="admin_name">
<<<<<<< HEAD
=======
	</div>

	<div class="admin_email">
		<p class="add">メールアドレス</p>
		<input type="email" name="admin_email">
	</div>

	<div class="admin_password">
		<p class="add">パスワード</p>
		<input type="password" name="admin_password">
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	</div>

	<div class="admin_email">
		<p class="add">メールアドレス</p>
		<input type="text" name="admin_email">
	</div>

	<div class="admin_password">
		<p class="add">パスワード</p>
		<input type="password" name="admin_password">
	</div>

	<div class="to-add">
		<input class="add" type="submit" value="追加する">
	</div>

</form>

<%@ include file="../footer.jsp"%>
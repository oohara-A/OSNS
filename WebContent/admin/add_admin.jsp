<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>

<form action="processProductRegistration.jsp" method="post">

	<div class="back_home">
		<input class="backhome" type="submit" value="ホームに戻る">
	</div>

	<h2 class="admin_title">管理者を追加</h2>

	<div class="contact_us">
		<p class="add">お名前</p>
		<input type="text" name="admin_name">
	</div>

	<div class="admin_email">
		<p class="add">メールアドレス</p>
		<input type="email" name="admin_email">
	</div>

	<div class="admin_password">
		<p class="add">パスワード</p>
		<input type="password" name="admin_password">
	</div>

	<div class="admin_reg_time">
		<p class="add">登録日</p>
		<input type="month" name="admin_reg_time">
	</div>

	<div class="to-add">
		<input class="add" type="submit" value="追加する">
	</div>

</form>

<%@ include file="../footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>

<form action="processAdminDeletion.jsp" method="post">

	<div class="back_home">
		<input class="backhome" type="submit" value="ホームに戻る">
	</div>

	<h2 class="admin_title">管理者を削除</h2>

	<div class="admin_id">
		<p class="ad_id">管理者ID</p>
		<input type="text" name="admin_id">
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="削除する">
	</div>

</form>

<%@ include file="../footer.jsp"%>

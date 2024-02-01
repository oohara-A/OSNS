<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>


<form action="user_login.jsp" method="post">

	<h2 class="log_error">ログインエラー</h2>


	<div class="error_message">

		<p style="color: red;">ログインをしてください！</p>

	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>
</form>



<%@ include file="../footer.jsp"%>

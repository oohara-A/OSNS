<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../menu.jsp"%>


<%
    boolean loginFailed = true;
%>

<style>
h2{
	margin-top: 6rem;
	margin-bottom: 3rem;
	text-align: center;
	font-size: 4rem;
	color: white;
}

.error_message {
	font-size: 2rem;
	text-align: center;
}

.sending{
	font-size: 1.5rem;
}


</style>

<form action="admin_login.jsp" method="post">

	<h2 class="log_error">ログインエラー</h2>


	<div class="error_message">
		<% if (loginFailed) { %>
		<p style="color: red;">ログインに失敗しました。ユーザー名もしくはパスワードを確認してください。</p>
		<% } %>
		<input class="sending" type="submit" value="ログイン">
	</div>




</form>



<%@ include file="../footer.jsp"%>

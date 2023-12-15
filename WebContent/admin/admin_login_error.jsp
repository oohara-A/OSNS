<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>

<%
    boolean loginFailed = true;
%>

<form action="registered.jsp" method="post">

	<h2 class="log_error">ログインエラー</h2>


	<div class="error_message">
		<% if (loginFailed) { %>
		<p style="color: red;">ログインに失敗しました。メールアドレスとパスワードを確認してください。</p>
		<% } %>
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>
</form>



<%@ include file="../footer.jsp"%>

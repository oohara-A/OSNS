<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>
<%@ include file="../com_header.jsp" %>
    <div class="menu-container">
        <%@ include file="../com_menu.jsp" %>
    </div>
<%@ include file="../com_header.jsp"%>

<%
    boolean loginFailed = true;
%>

<form action="company_top_page.jsp" method="post">
	<div class="back_home">
			<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<form action="com_login.jsp" method="post">

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

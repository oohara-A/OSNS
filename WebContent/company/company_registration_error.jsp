<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>

<%
    boolean loginFailed = true;
%>

<form action="registered.jsp" method="post">

	<h2 class="log_error">入力内容に誤りがあります。</h2>

	<div class="error_message">
		<% if (loginFailed) { %>
		<p style="color: red;">お手数ですがもう一度入力のほどお願いします。</p>
		<% } %>
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>
</form>



<%@ include file="../footer.jsp"%>

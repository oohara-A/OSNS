<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ include file="../com_header.jsp"%>
=======
<%@ include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

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
<<<<<<< HEAD
=======



<%@ include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

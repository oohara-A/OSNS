<<<<<<< HEAD
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../com_header.jsp" %>

    <div class="menu-container">
        <%@ include file="../com_menu.jsp" %>
    </div>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../com_header.jsp"%>
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f

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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f
		<% if (loginFailed) { %>
		<p style="color: red;">ログインに失敗しました。メールアドレスとパスワードを確認してください。</p>
		<% } %>
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>
<<<<<<< HEAD
=======
    <% if (loginFailed) { %>
        <p style="color: red;">ログインに失敗しました。</p>
        <p style="color: red;">メールアドレスとパスワードを確認してください。</p>
    <% } %>
	</div>

    <div class="log_error_button">
        <input class="error_button" type="submit" value="ログイン" >
    </div>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6
=======
>>>>>>> 3d64af93b3190baad20c34ff4872ac982f8e4c5f
</form>

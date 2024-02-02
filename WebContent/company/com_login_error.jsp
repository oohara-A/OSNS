<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>
<<<<<<< HEAD
<%@ include file="../com_header.jsp" %>
    <div class="menu-container">
        <%@ include file="../com_menu.jsp" %>
    </div>
<%@ include file="../com_header.jsp"%>
=======
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<%
    boolean loginFailed = true;
%>

<<<<<<< HEAD
<form action="company_top_page.jsp" method="post">
	<div class="back_home">
			<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<form action="com_login.jsp" method="post">

=======
<form action="com_login.jsp" method="post">

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	<h2 class="log_error">ログインエラー</h2>


	<div class="error_message">
		<% if (loginFailed) { %>
		<p style="color: red;">ログインに失敗しました。メールアドレスとパスワードを確認してください。</p>
		<% } %>
<<<<<<< HEAD
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>

</form>
=======
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="ログイン">
	</div>
</form>



<%@ include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

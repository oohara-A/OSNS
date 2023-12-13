<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../com_header.jsp" %>

    <div class="menu-container">
        <%@ include file="../com_menu.jsp" %>
    </div>

<%
    boolean loginFailed = true;
%>

<form action="registered.jsp" method="post">

    <h2 class="log_error">ログインエラー</h2>


	<div class="error_message">
    <% if (loginFailed) { %>
        <p style="color: red;">ログインに失敗しました。</p>
        <p style="color: red;">メールアドレスとパスワードを確認してください。</p>
    <% } %>
	</div>

    <div class="log_error_button">
        <input class="error_button" type="submit" value="ログイン" >
    </div>
</form>



<%@ include file="../footer.jsp" %>

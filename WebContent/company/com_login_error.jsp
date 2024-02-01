<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <title>login_error</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
</head>

<body>
    <%
        boolean loginFailed = true;
    %>

    <form action="com_login.jsp" method="post">
		<div class="log_all_error">

        <h2 class="log_error">ログインエラー</h2>

        <div class="error_message">
            <% if (loginFailed) { %>
                <p style="color: red;">ログインに失敗しました。</p>
                <p style="color: red;">メールアドレスとパスワードを確認してください。</p>
            <% } %>
        </div>

        <div class="log_error_button">
        	<a href="com_login.jsp">
            	<input class="error_button" type="submit" value="ログイン">
            </a>
        </div>

        </div>
    </form>

</body>
</html>
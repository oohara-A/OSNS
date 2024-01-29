<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>login_error</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
</head>

<body>
    <%
        boolean loginFailed = true;
    %>

    <form action="registered.jsp" method="post">
		<div class="log_all_error">

        <h2 class="log_error">ログインエラー</h2>

        <div class="error_message">
            <% if (loginFailed) { %>
                <p style="color: red;">ログインに失敗しました。</p>
                <p style="color: red;">メールアドレスとパスワードを確認してください。</p>
            <% } %>
        </div>

        <div class="log_error_button">
            <input class="error_button" type="submit" value="ログイン">
        </div>

        </div>
    </form>

</body>
</html>
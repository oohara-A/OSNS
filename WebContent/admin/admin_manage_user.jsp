<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
	<title>admin_page</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
</head>

<div class="back_home">
        <a class="backhome" href="admin.jsp">ホームに戻る</a>
	</div>
<form action="Showuser.action" method="post">
<div class="coupon-list">
    <h2 class="manage_user">ユーザー一覧</h2>

    <div class="search-container">
        <label for="search">ユーザ検索:</label>
        <input type="text" id="search" name="search" placeholder="ユーザ名を入力">
        <button type="submit" class="pro_search">検索</button>
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>ユーザー名</th>
                <th>メールアドレス</th>
                <th>パスワード</th>
                <th>登録日時</th>
            </tr>
        </thead>

        <tbody>
        	<c:forEach var="item" items="${userList}">

                <tr>
                    <td>${item.user_name}</td>
                    <td>${item.email}</td>
                    <td>${item.password}</td>
                    <td>${item.adding_time}</td>
                </tr>
             </c:forEach>
        </tbody>
    </table>
</div>

</form>
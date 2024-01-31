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
<form action="Showreview.action" method="post">
<div class="coupon-list">

    <h2 class="com_info">レビュー　一覧</h2>

    <div class="search-container">
        <label for="search">レビュー検索:</label>
        <input type="text" id="search" name="search" placeholder="ユーザーIDを入力">
        <button type="submit" class="pro_search">検索</button>
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>商品ID</th>
                <th>ユーザーID</th>
                <th>評価</th>
                <th>本文内容</th>
                <th>記述日</th>
            </tr>
        </thead>

        <tbody>
        	<c:forEach var="r" items="${reviewList}">
                <tr>
                    <td>${r.product_id}</td>
                    <td>${r.user_id}</td>
                    <td>${r.rating}</td>
                    <td>${r.reviewbody}</td>
                    <td>${r.submissiondate}</td>
                </tr>
             </c:forEach>
        </tbody>

    </table>
</div>

</form>
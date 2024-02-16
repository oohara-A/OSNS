<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<style>
.coupon-list {
    max-width: 800px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    height: 63%;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>

<head>
	<title>company_page</title>
	<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="company_top.jsp" method="post">
	<div class="back_home">
        <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
	</div>
</form>

<form action="Coupon_search.action" method="post">
	<div class="coupon-list">

    <h2>クーポン一覧</h2>

    <div class="search-container">
        <label for="search">クーポン検索:</label>
        <input type="text" id="search" name="search" placeholder="クーポン名を入力">
        <button type="submit" class="pro_search">検索</button>
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>クーポン名</th>
                <th>クーポンコード</th>
                <th>割引率</th>
            </tr>
        </thead>

        <tbody>
        	<c:forEach var="c" items="${couponlist}">

                <tr>
                    <td>${c.coupon_name}</td>
                    <td>${c.coupon_code}</td>
                    <td>${c.effect}%</td>

                </tr>
             </c:forEach>
        </tbody>
    　</table>
	</div>
</form>

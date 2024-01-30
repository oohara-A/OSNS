<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
	<title>company_page</title>
	<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="Product_cancellation.action" method="post">
<div class="coupon-list">

	<div class="back_home">
        <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
	</div>

    <h2>商品一覧</h2>

    <div class="search-container">
        <label for="search">商品検索:</label>
        <input type="text" id="search" name="search" placeholder="商品名を入力">
        <button type="submit" class="pro_search">検索</button>
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>商品名</th>
                <th>価格</th>
                <th>在庫</th>
                <th>更新日</th>
            </tr>
        </thead>

        <tbody>
        	<c:forEach var="item" items="${productlist}">

                <tr>
                    <td>${item.product_name}</td>
                    <td>${item.unit_price}</td>
                    <td>${item.regiinvqua}</td>
                    <td>${item.adding_time}</td>
                </tr>
             </c:forEach>
        </tbody>
    </table>
</div>

</form>

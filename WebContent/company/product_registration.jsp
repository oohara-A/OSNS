<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="processProductRegistration.jsp" method="post">

    <h2 class="product_title">商品登録</h2>

    <div class="product_info">
        <label for="productName">商品名:</label>
        <input type="text" id="productName" name="productName" required>
    </div>

    <div class="product_info">
        <label for="productDescription">商品説明:</label>
        <textarea id="productDescription" name="productDescription" rows="4" required></textarea>
    </div>

    <div class="product_info">
        <label for="productPrice">価格:</label>
        <input type="number" id="productPrice" name="productPrice" required>
    </div>

    <div class="product_info">
        <label for="productStock">在庫数:</label>
        <input type="number" id="productStock" name="productStock" required>
    </div>

    <div class="product_submit">
        <input type="submit" value="登録する">
    </div>
</form>

<%@ include file="../footer.jsp" %>

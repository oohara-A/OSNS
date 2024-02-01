<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
    <title>company_page</title>
    <link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="Product_registrationAction.java" method="post">
    <div class="product_all">

        <div class="back_home">
            <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
        </div>

        <h2 class="product_title">商品編集</h2>

        <div class="item_entry">

            <div class="product_info">
                <label for="productName">商品名:</label>
                <input type="text" id="productName" name="pro_input">
            </div>

            <div class="product_info">
                <label for="productPrice">商品価格:</label>
                <input type="text" id="productPrice" name="pro_input_price">
            </div>

            <div class="product_info">
                <label for="productImage">商品画像:</label>
                <input type="file" id="productImage" name="pro_image" accept="image/*">
            </div>

            <div class="pro_info">
                <label for="productStock">在庫数:</label>
                <input type="number" id="pro_input_stock" name="productStock">
            </div>

            <div class="product_genre">
                <label for="productGenre">ジャンル:</label>
                <select id="productGenre" name="genre_sele">
                    <option value="genre1">本</option>
                    <option value="genre2">化粧品</option>
                    <option value="genre3">食料品</option>
                </select>
            </div>

            <div class="pro_info">
                <label for="shippingCost">送料設定:</label>
                <input type="number" id="shippingCost" name="shipping_fee">
            </div>

            <div class="product_info">
                <label for="productDescription">商品説明:</label>
                <textarea id="productDescription" name="pro_coment" rows="4"></textarea>
            </div>
        </div>

        <div class="product_submit">
            <input type="submit" value="登録完了">
        </div>

        <div class="sample_info">
            <a href="sample_edit.jsp">試供品編集はこちら</a>
        </div>
    </div>
</form>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<div class="checkout-container">
        <h2>注文情報入力</h2>

        <form class="checkout-form">
            <div class="form-group">
                <label for="name">お名前:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">メールアドレス:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="address">住所:</label>
                <input type="text" id="address" name="address" required>
            </div>

            <div class="checkout-summary">
                <p>カート内数量: <span id="total-items">1</span></p>
                <p>カート内合計金額: ¥<span id="subtotal">2000</span></p>
                <button type="submit">購入する</button>
            </div>
        </form>
    </div>
<%@include file="../footer.jsp" %>
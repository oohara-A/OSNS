<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<div class="checkout-container">
        <h2>注文情報入力</h2>

        <h1>1.受け取り場所</h1>
        <form class="checkout-form">
            <div class="form-group">
                <label for="country">　　　　　　国:</label>
                <input type="text" id="country" name="country" required>
            </div>

            <div class="form-group">
                <label for="name">　　　　　氏名:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="phone">　　　電話番号:</label>
                <input type="text" id="phone" name="phone" required>
            </div>

            <div class="form-group">
                <label for="post">　　　郵便番号:</label>
                <input type="text" id="post" name="post" required>
            </div>

            <div class="form-group">
                <label for="prefecture">　　　都道府県:</label>
                <input type="text" id="prefecture" name="prefecture" required>
            </div>

            <div class="form-group">
                <label for="municipalities">　　　市区町村:</label>
                <input type="text" id="municipalities" name="municipalities" required>
            </div>

            <div class="form-group">
                <label for="street">丁目・番地・号:</label>
                <input type="text" id="street" name="street" required>
            </div>

            <div class="form-group">
                <label for="building">建物名／会社名:</label>
                <input type="text" id="building" name="building" required>
            </div>

            <div class="form-group">
                <label for="room">　　　部屋番号:</label>
                <input type="text" id="room" name="room" required>
            </div>

            <h1>2.支払方法</h1>

           	<div>
           		<label for="pay">プリペイド</label>
           		<input type="radio">
           	</div>

            <div class="checkout-summary">
                <p>カート内数量: <span id="total-items">1</span></p>
                <p>カート内合計金額: ¥<span id="subtotal">2000</span></p>
                <button type="submit">購入する</button>
            </div>
        </form>
    </div>
<%@include file="../footer.jsp" %>
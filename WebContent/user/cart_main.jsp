<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	.cart-container{
	max-width: 900px;
    margin: 60px auto;
    background-color: #ffffff;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

    th, td {
        width: 20%;
        text-align: left;
        padding: 10px;
    }

    .cart-container {
        padding-top: 70px;
        width: 70%;
        max-width: 1000px;
        margin: 60px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .cart_table {
        width: 100%;
        table-layout: fixed;
    }

    .deletion {
        text-align: right;
    }

    .deletion button {
        padding: 5px 10px;
        background-color: #ff0000;
        color: #ffffff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    .cart-summary {
        margin-top: 20px;
        padding: 10px;
        border-top: 1px solid #ccc;
    }
</style>

<div class="cart-container">
    <table class="cart_table">
        <thead>
            <tr>
                <th>製品</th>
                <th>価格</th>
                <th>数量</th>
                <th class="sending_time">合計</th>
                <th class="deletion">操作</th>
            </tr>
        </thead>
        <tbody>
            <!-- Sample cart item, repeat this block for each item in the cart -->
            <tr>
                <td>
                    <a href="product_detail.jsp">
                        <img alt="商品リストへ" width="80" height="80" src="<%=request.getContextPath() %>/assets/proimage/${prodetail.image_filename}">
                    </a>
                </td>

                <td>\2000</td>

                <td><input id="number" type="number" size="auto" value="1" min="1"></td>

                <td>\2000</td>

                <td class="deletion">
                    <button onclick="deleteCartItem(this)">削除</button>
                </td>
            </tr>
            <!-- Repeat this block for each item in the cart -->
        </tbody>
    </table>
</div>

<div class="cart-summary">
    <p>カート内数量: <span id="total-items">1</span></p>
    <p>カート内合計: \<span id="subtotal">2000</span></p>
</div>

<script>
    function deleteCartItem(button) {
        var confirmation = confirm("本当に削除しますか？");
        if (confirmation) {
            // ここに削除ロジックを追加
            console.log("削除ボタンがクリックされました。");
        } else {
            console.log("削除がキャンセルされました。");
        }
    }
</script>

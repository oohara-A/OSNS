<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<div>

<div class="cart-container">
        <h2>Your Shopping Cart</h2>
        <table>
            <thead>
                <tr>
                    <th>製品名</th>
                    <th>価格</th>
                    <th>数量</th>
                    <th>合計金額</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <!-- Sample cart item, repeat this block for each item in the cart -->
                <tr>
                    <td>Product Name</td>
                    <td>$19.99</td>
                    <td>
                        <input id="number" type="number" value="1" min="1">
                    </td>
                    <td></td>
                    <td>
                        <button>Delete</button>
                    </td>
                </tr>
                <!-- Repeat this block for each item in the cart -->
            </tbody>
        </table>

        <div class="cart-summary">
            <p>Total Items: <span id="total-items">1</span></p>
            <p>Subtotal: $<span id="subtotal">19.99</span></p>
            <button>Proceed to Checkout</button>
        </div>
    </div>



	<hr>
<p>おすすめ商品</p>
		<div class="detail_img">


			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>

			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>

			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>

			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>

			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>

			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>

			<div class="img">
				<img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
			</div>
		</div>

</div>

<%@include file="../footer.jsp" %>
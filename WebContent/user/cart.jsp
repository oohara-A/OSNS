<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>



<div>

<div class="cart-container">
        <h2>マイカート</h2>
        <table class="cart_table">
            <thead>
                <tr>
                    <th>製品</th>
                    <th>価格</th>
                    <th>数量</th>
                    <th>合計</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                <!-- Sample cart item, repeat this block for each item in the cart -->
                <tr>
                    <td>
                    	<a href="product_detail.jsp">
							<img alt="商品リストへ" width="80" height="80" src="../assets/image/food_box.png">
						</a>
					</td>

                    <td>\2000</td>

                    <td>
                        <input id="number" type="number" size="auto" value="1" min="1">
                    </td>

                    <td>\2000</td>

                    <td>
                        <button id="delete"><p>削除</p></button>
                    </td>
                </tr>
                <!-- Repeat this block for each item in the cart -->
            </tbody>
        </table>

        <div class="cart-summary">
            <p>カート内数量: <span id="total-items">1</span></p>
            <p>カート内合計: \<span id="subtotal">2000</span></p>
            <button onclick="location.href='cash_register.jsp'">レジに進む</button>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu.jsp"%>
<c:choose>
<c:when test="${cart != null }">
	<div class="cart-container">
		<h2>マイカート</h2>
		<%-- <%@include file="cart_main.jsp"%> --%>
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
<c:forEach var="cart" items="${cart}">
	<tbody>
		<!-- Sample cart item, repeat this block for each item in the cart -->

			<tr>
				<td><a href="product_detail.jsp">
						<img   src="../assets/proimage/${cart.file_name}" alt="imageなし"  width="80" height="80">
					</a>
				</td>

				<td >￥:${cart.unit_price }</td>

				<td><input id="number" type="number" size="auto" value="${cart.order_count}"></td>
				<td>￥:${cart.order_count * cart.unit_price}</td>
				<td>
				<a href="Cartdel.action?id=${cart.cart_id}">
					<button id="delete">
						<p>削除</p>
					</button>
				</a>
				</td>
			</tr>

		<!-- Repeat this block for each item in the cart -->
		</tbody>
		</c:forEach >
	</table>
	<div class="cart-summary">
		<p >
			カート内数量: <span id="total-items">0</span>
		</p>
		<p>
			カート内合計￥:<span id="subtotal">10000</span>
		</p>
	</div>
		<button onclick="location.href='cash_register.jsp'">レジに進む</button>
	</div>
	</c:when>
	<c:otherwise>
		<div class="cart-container">
			<h2>マイカート</h2>
			<p>カートに商品がありません</p>
		</div>
	</c:otherwise>
	</c:choose>
	<hr>
	<p>おすすめ商品</p>
	<div class="detail_img">
		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>

		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>

		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>

		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>

		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>

		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>

		<div class="img">
			<img alt="商品画像" width="100" height="100"
				src="../assets/image/food_box.png">
		</div>
	</div>
	<script>
            function deleteCartItem(button) {
                // バリデーションを無効にする

                // バリデーションを通過した場合、削除ロジックを実行
                var confirmation = confirm("本当に削除しますか？");
                if (confirmation) {
                    // ここに削除ロジックを追加
                    // 例: カートアイテムを削除するAPI呼び出しや表示の更新
                    console.log("削除ボタンがクリックされました。");
                } else {
                    // キャンセル時の処理
                    console.log("削除がキャンセルされました。");
                }
            }
        </script>

<%@include file="../footer.jsp"%>
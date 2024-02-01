<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<td><a href="product_detail.jsp"> <img alt="商品リストへ"
					width="80" height="80" src="<%=request.getContextPath() %>/assets/proimage/${prodetail.image_filename}">
			</a></td>

			<td>\2000</td>

			<td><input id="number" type="number" size="auto" value="1"
				min="1"></td>

			<td>\2000</td>

			<td>
				<button id="delete">
					<p>削除</p>
				</button>
			</td>
		</tr>
		<!-- Repeat this block for each item in the cart -->
	</tbody>
</table>

<div class="cart-summary">
	<p>
		カート内数量: <span id="total-items">1</span>
	</p>
	<p>
		カート内合計: \<span id="subtotal">2000</span>
	</p>
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

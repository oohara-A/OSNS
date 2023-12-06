<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@include file="../menu.jsp" %>



		<div>

			<div class="cart-container">
				<h2>マイカート</h2>
				<%@include file="cart_main.jsp" %>

					<button onclick="location.href='cash_register.jsp'">レジに進む</button>
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
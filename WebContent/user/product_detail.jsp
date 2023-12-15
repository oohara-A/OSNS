<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu.jsp"%>
<div class="product_detail">
<c:forEach var="prodetail" items="${product_detail}">

	<div class="product_box">
		<img alt="商品画像" src="../assets/proimage/${prodetail.image_filename}">
		<div class="box">
			<p>商品名:${prodetail.product_name}</p>
			<p>価格:${prodetail.unit_price}</p>
			<p>ポイント:${(prodetail.unit_price * 0.001)}</p>
			<p>クーポン:なし</p>
		</div>

		<div class="box">
			<p>在庫:${prodetail.regiinvqua }</p>
			<p>
				数量:<input name="cnt" type="number" size="2" value="1" min="1">
			</p>
			<p>
				カート
				<button onclick="location.href='index.jsp'">追加</button>
			</p>
			<p>購入:</p>
			</div>
	</div>

		<div class="com_box">
			<p>商品説明文<br>${prodetail.product_description }</p>
		</div>
</c:forEach>

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

	<hr>

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
</div>



<%@include file="../user/review.jsp"%>
<%@include file="../footer.jsp"%>
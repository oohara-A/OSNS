<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu.jsp"%>
<<<<<<< HEAD
<style>
  .detail_img {
    display: flex;
    flex-wrap: wrap;
  }

  .product {
  	display:block;
  	padding-top:40px;
    width: 600px; /* 任意の幅を設定 */
     /* 適切なマージンを設定 */
  }
  .font{
  	font-size: 25px;
  }
</style>
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
			<form action="Cartadd.action">
				<p>
					数量:<input  type="number" name="cnt" min="1" max="100"  required="required">
				</p>
				<p>
					カート
					<button type="submit" name="id" value="${prodetail.id }">追加</button>
				</p>
			</form>
			<p>購入:</p>
			</div>
=======
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
			<form action="Cartadd.action">
				<p>
					数量:<input  type="number" name="cnt" min="1" max="10" >
				</p>
				<p>
					カート
					<button type="submit" name="id" value="${prodetail.id }">追加</button>
				</p>
			</form>
			<p>購入:</p>
			</div>

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	</div>

		<div class="com_box">
			<p>商品説明文<br>${prodetail.product_description }</p>
		</div>
</c:forEach>
<<<<<<< HEAD
=======

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
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
</div>



<<<<<<< HEAD
	<hr>
	<h1>おすすめ商品</h1>

	<div class="detail_img">
		<c:forEach var="product_cate" items="${product_category}">
			<div class="product">
				<div class="image">
				<!-- product_cate.id・・・・・商品ID -->
				<a href="Prodetail.action?id=${product_cate.id}"><img alt="商品詳細へ"src="../assets/proimage/${product_cate.image_filename}"></a>
					<p class="font">商品名:${product_cate.product_name }</p>
					<p class="font">価格:${product_cate.unit_price}</p>
					<p class="font">★★★★☆</p>
				</div>
			</div>
		</c:forEach>
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




=======
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
<%@include file="../user/review.jsp"%>
<%@include file="../footer.jsp"%>
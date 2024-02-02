<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../menu.jsp"%>
<<<<<<< HEAD
<style>
  .product_list {
    display: flex;
    flex-wrap: wrap;
  }

  .product {
  	display:block;
  	padding-top:40px;
    width: 400px; /* 任意の幅を設定 */
     /* 適切なマージンを設定 */
  }
  .font{
  	font-size: 20px;
  }

</style>
<h1>売れ筋商品</h1>

<div class="product_list">
=======

<div class="product_list">
	<h1>売れ筋商品</h1>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	<c:forEach var="product_cate" items="${product_category}">
		<div class="product">
			<div class="image">
			<!-- product_cate.id・・・・・商品ID -->
			<a href="Prodetail.action?id=${product_cate.id}"><img alt="商品詳細へ"src="../assets/proimage/${product_cate.image_filename}"></a>
<<<<<<< HEAD
				<p class="font">商品名:${product_cate.product_name }</p>
				<p class="font">価格:${product_cate.unit_price}</p>
				<p class="font">★★★★☆</p>
			</div>
		</div>
	</c:forEach>
</div>
<hr>
	<h1>新着商品</h1>
<div class="product_list">
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
	<h1>評価の高い商品</h1>
<div class="product_list">
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


=======
				<p>商品名:${product_cate.product_name }</p>
				<p>価格:${product_cate.unit_price}</p>
				<p>★★★★☆</p>
			</div>
		</div>
	</c:forEach>

	<h1>新着商品</h1>
	<div class="product">

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>
	</div>
	<h1>評価の高い商品</h1>
	<div class="product">


		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>

		<div class="image">
			<a href="#"> <img alt="商品詳細へ" src="../assets/image/food_box.png">
			</a>
			<p>商品名</p>
			<p>価格</p>
			<p>★★☆☆☆</p>
		</div>
	</div>
</div>


>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
<%@include file="../footer.jsp"%>
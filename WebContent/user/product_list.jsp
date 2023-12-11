<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../menu.jsp"%>

<div class="product_list">
	<h1>売れ筋商品</h1>
	<c:forEach var="product_cate" items="${product_category}">
		<div class="product">
			<div class="image">
			<!-- product_cate.id・・・・・商品ID -->
			<a href="Prodetail.action?id=${product_cate.id}"><img alt="商品詳細へ"src="../assets/proimage/${product_cate.image_filename}"></a>
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


<%@include file="../footer.jsp"%>
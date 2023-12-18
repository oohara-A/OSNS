<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../menu.jsp"%>
<div class="index">
	<div class="image">
		<!--%E9%A3%9F%E5%93%81は「食品」のURLエンコードされた形 この形じゃないと、エラーになる-->
		<a href="Procategory.action?category=%E9%A3%9F%E5%93%81">
		<img alt="商品リストへ" src="../assets/image/food_box.png">
		</a>
		<h1>食料品</h1>
	</div>

	<div class="image">
		<a href="#"> <img alt="商品詳細へ"
			src="../assets/image/tosyokan_book_tana.png">
		</a>
		<h1>書籍</h1>
	</div>

	<div class="image">
		<a href="#"> <img alt="商品詳細へ"
			src="../assets/image/makeup_eyeshadow.png">
		</a>
		<h1>化粧品</h1>
	</div>

	<div class="image">
		<a href="#"> <img alt="商品詳細へ"
			src="../assets/image/kaden_pikapika.png">
		</a>
		<h1>電化製品</h1>
	</div>

	<div class="image">
		<a href="#"> <img alt="商品詳細へ"
			src="../assets/image/shichakushitsu.png">
		</a>
		<h1>服飾雑貨</h1>
	</div>
	<div class="image">
		<a href="#"> <img alt="商品詳細へ" src="../assets/image/pop_new.png">
		</a>
		<h1>新着商品</h1>
	</div>
	<div class="image">
		<a href="#"> <img alt="商品詳細へ"
			src="../assets/image/foodbank_teikyou.png">
		</a>
		<h1>試供品提供中</h1>
	</div>
	<div class="image">
		<a href="#"> <img alt="商品詳細へ" src="../assets/image/star5.png">
		</a>
		<h1>評価の高い商品</h1>
	</div>
</div>


<<<<<<< HEAD
<%@include file="../footer.jsp"%>

=======
<%@include file="../footer.jsp"%>
>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961

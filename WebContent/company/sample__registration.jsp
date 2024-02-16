<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../com_header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
<form action="company_top_page.jsp" method="post">
	<div class="back_home">
			<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<form action="Testpro_registration.action" method="post" enctype="multipart/form-data">

	<h2 class="product_title">試供品登録</h2>

	<div class="item_entry">

		<div class="product_info">
			<label for="productName">試供品名:</label> <input type="text"
				id="productName" name="testpro_name" required>
		</div>

		<div class="product_info">
			<label for="productPrice">試供品価格:</label> <input type="text"
				id="productPrice" name="test_price" required>
		</div>

		<div class="product_info">
			<label for="productImage">試供品画像:</label> <input type="file"
				id="productImage" name="image_filename" accept="image/*" required>
		</div>

		<div class="product_info">
			<label for="productStock">在庫数:</label> <input type="number"
				id="productStock" name="regiinvqua" required>
		</div>

		<div class="product_genre">
			<label for="productGenre">ジャンル:</label> <select id="productGenre"
				name="category_name" required>
				<!-- Add genre options here -->
				<option value="genre1">本</option>
				<option value="genre2">化粧品</option>
				<option value="genre3">食料品</option>
			</select>
		</div>

		<div class="product_info">
			<label for="shippingCost">送料設定:</label> <input type="number"
				id="shippingCost" name="shippingCost" required>
		</div>

		<div class="product_info">
			<label for="productDescription">商品説明:</label>
			<textarea id="productDescription" name="product_description" rows="4"
				required></textarea>
		</div>

	</div>

	<div class="product_submit">
		<input type="submit" value="登録完了">
	</div>
</form>

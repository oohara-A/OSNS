<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ include file="../com_header.jsp"%>
<form action="company_top_page.jsp" method="post">
=======
<%@ include file="../menu.jsp"%>

<form action="processProductRegistration.jsp" method="post">

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	<div class="back_home">
			<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<<<<<<< HEAD
<form action="Testpro_registration.action" method="post" enctype="multipart/form-data">

=======
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	<h2 class="product_title">試供品登録</h2>

	<div class="item_entry">

		<div class="product_info">
			<label for="productName">試供品名:</label> <input type="text"
<<<<<<< HEAD
				id="productName" name="testpro_name" required>
=======
				id="productName" name="productName" required>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		</div>

		<div class="product_info">
			<label for="productPrice">試供品価格:</label> <input type="text"
<<<<<<< HEAD
				id="productPrice" name="test_price" required>
=======
				id="productPrice" name="productPrice" required>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		</div>

		<div class="product_info">
			<label for="productImage">試供品画像:</label> <input type="file"
<<<<<<< HEAD
				id="productImage" name="image_filename" accept="image/*" required>
=======
				id="productImage" name="productImage" accept="image/*" required>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		</div>

		<div class="product_info">
			<label for="productStock">在庫数:</label> <input type="number"
<<<<<<< HEAD
				id="productStock" name="regiinvqua" required>
=======
				id="productStock" name="productStock" required>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		</div>

		<div class="product_genre">
			<label for="productGenre">ジャンル:</label> <select id="productGenre"
<<<<<<< HEAD
				name="category_name" required>
=======
				name="productGenre" required>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
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
<<<<<<< HEAD
			<textarea id="productDescription" name="product_description" rows="4"
=======
			<textarea id="productDescription" name="productDescription" rows="4"
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
				required></textarea>
		</div>

	</div>

	<div class="product_submit">
		<input type="submit" value="登録完了">
	</div>
<<<<<<< HEAD
</form>
=======
</form>

<%@ include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

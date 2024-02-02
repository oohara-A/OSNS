<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@ include file="../com_header.jsp"%>
=======
<%@ include file="../menu.jsp"%>

<form action="processProductRegistration.jsp" method="post">
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<form action="company_top_page.jsp" method="post">
	<div class="back_home">
			<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<<<<<<< HEAD
<form action="Product_registration.action" method="post" enctype="multipart/form-data">

=======
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
	<h2 class="product_title">商品登録</h2>

	<div class="item_entry">

<<<<<<< HEAD
	    <div class="product_info">
	        <label for="productName">商品名:</label>
	        <input type="text" id="productName" name="product_name">
	    </div>

	    <div class="product_info">
	        <label for="productPrice">商品価格:</label>
	        <input type="number" id="productPrice" name="unit_price">
	    </div>

	    <div class="product_info">
	        <label for="productImage">商品画像:</label>
	        <input  type="file" id="productImage" name="image_filename" accept="image/*">
	    </div>

		<div class="pro_info">
        	<label for="productStock">在庫数:</label>
        	<input type="number" id="pro_input_stock" name="regiinvqua">
    	</div>

	    <div class="product_genre">
	        <label for="productGenre">ジャンル:</label>
	        <select id="productGenre" name="category_name">
	            <option value="genre1">本</option>
	            <option value="genre2">化粧品</option>
	            <option value="genre3">食料品</option>
	        </select>
    	</div>


=======
		<div class="product_info">
			<label for="productName">商品名:</label> <input type="text"
				id="productName" name="pro_input">
		</div>

		<div class="product_info">
			<label for="productPrice">商品価格:</label> <input type="text"
				id="productPrice" name="pro_input_price">
		</div>

		<div class="product_info">
			<label for="productImage">商品画像:</label> <input type="file"
				id="productImage" name="pro_image" accept="image/*">
		</div>

		<div class="pro_info">
			<label for="productStock">在庫数:</label> <input type="number"
				id="pro_input_stock" name="productStock">
		</div>

		<div class="product_genre">
			<label for="productGenre">ジャンル:</label> <select id="productGenre"
				name="genre_sele">
				<option value="genre1">本</option>
				<option value="genre2">化粧品</option>
				<option value="genre3">食料品</option>
			</select>
		</div>

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
		<div class="pro_info">
			<label for="shippingCost">送料設定:</label> <input type="number"
				id="shippingCost" name="shipping_fee">
		</div>

<<<<<<< HEAD
    	<div class="product_info">
        	<label for="productDescription">商品説明:</label>
        	<textarea id="productDescription" name="product_description" rows="4"></textarea>
    	</div>
	</div>

    <div class="product_submit">
        <input type="submit" value="登録完了">
    </div>
</form>
	<div class="sample_info">
		<a href="sample__registration.jsp">試供品登録はこちら</a>
	</div>
=======
		<div class="product_info">
			<label for="productDescription">商品説明:</label>
			<textarea id="productDescription" name="pro_coment" rows="4"></textarea>
		</div>
	</div>

	<div class="product_submit">
		<input type="submit" value="登録完了">
	</div>

	<div class="sample_info">
		<a href="sample_registration.jsp">試供品登録はこちら</a>
	</div>

</form>

<%@ include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

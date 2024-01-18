<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../com_header.jsp"%>

<form action="company_top_page.jsp" method="post">
	<div class="back_home">
			<input class="backhome" type="submit" value="ホームに戻る">
	</div>
</form>

<form action="Product_registration.action" method="post" enctype="multipart/form-data">

	<h2 class="product_title">商品登録</h2>

	<div class="item_entry">

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


		<div class="pro_info">
			<label for="shippingCost">送料設定:</label> <input type="number"
				id="shippingCost" name="shipping_fee">
		</div>

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
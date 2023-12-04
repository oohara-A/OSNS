<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../menu.jsp" %>

<form action="processProductRegistration.jsp" method="post">

	<div class="back_home">
		<input class="backhome" type="submit" value="ホームに戻る">
	</div>

    <h2 class="product_title">商品登録</h2>

	<div class="item_entry">

	    <div class="product_info">
	        <label for="productName">商品名:</label>
	        <input type="text" id="productName" name="productName" required>
	    </div>

	    <div class="product_info">
	        <label for="productPrice">商品価格:</label>
	        <input type="text" id="productPrice" name="productPrice" required>
	    </div>

	    <div class="product_info">
	        <label for="productImage">商品画像:</label>
	        <input type="file" id="productImage" name="productImage" accept="image/*" required>
	    </div>

		<div class="product_info">
        	<label for="productStock">在庫数:</label>
        	<input type="number" id="productStock" name="productStock" required>
    	</div>

	    <div class="product_genre">
	        <label for="productGenre">ジャンル:</label>
	        <select id="productGenre" name="productGenre" required>
	            <!-- Add genre options here -->
	            <option value="genre1">本</option>
	            <option value="genre2">化粧品</option>
	            <option value="genre3">食料品</option>
	        </select>
    	</div>

    	<div class="product_info">
        	<label for="shippingCost">送料設定:</label>
        	<input type="number" id="shippingCost" name="shippingCost" required>
    	</div>

    	<div class="product_info">
        	<label for="productDescription">商品説明:</label>
        	<textarea id="productDescription" name="productDescription" rows="4" required></textarea>
    	</div>

	</div>

    <div class="product_submit">
        <input type="submit" value="登録完了">
    </div>

    <div class="sample_info">
        <a href="sample_registration.jsp">試供品登録はこちら</a>
    </div>

</form>

<%@ include file="../footer.jsp" %>

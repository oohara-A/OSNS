<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../com_header.jsp" %>

    <div class="menu-container">
        <%@ include file="../com_menu.jsp" %>
    </div>
<form action="company_top_page.jsp" method="post">

	<div class="back_home">
		<input class="backhome" type="submit" value="ホームに戻る">
	</div>

    <h2 class="product_title">商品編集</h2>

	<div class="item_entry">

	    <div class="product_info">
	        <label for="productName">商品名:</label>
	        <input type="text" id="productName" name="pro_input" required>
	    </div>

	    <div class="product_info">
	        <label for="productPrice">商品価格:</label>
	        <input type="text" id="productPrice" name="pro_input_price" required>
	    </div>

	    <div class="product_info">
	        <label for="productImage">商品画像:</label>
	        <input type="file" id="productImage" name="pro_image" accept="image/*" required>
	    </div>

		<div class="product_info">
        	<label for="productStock">在庫数:</label>
        	<input type="number" id="productStock" name="pro_input_stock" required>
    	</div>

	    <div class="product_genre">
	        <label for="productGenre">ジャンル:</label>
	        <select id="productGenre" name="genre_sele" required>
	            <option value="genre1">本</option>
	            <option value="genre2">化粧品</option>
	            <option value="genre3">食料品</option>
	        </select>
    	</div>

    	<div class="product_info">
        	<label for="shippingCost">送料設定:</label>
        	<input type="number" id="shippingCost" name="shipping_fee" required>
    	</div>

    	<div class="product_info">
        	<label for="productDescription">商品コメント:</label>
        	<textarea id="productDescription" name="pro_coment" rows="4" required></textarea>
    	</div>

	</div>

    <div class="product_submit">
        <input type="submit" value="編集完了">
    </div>

    <div class="sample_info">
        <a href="../sample_registration.jsp">試供品編集はこちら</a>
    </div>

</form>

<%@ include file="../com_footer.jsp" %>

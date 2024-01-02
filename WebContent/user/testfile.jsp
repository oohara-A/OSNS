<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>

<form action="Test.action" method="post"
	enctype="multipart/form-data">
	 <textarea name="reviews" id="productReviewContent" rows="4" cols="50"
		          placeholder="あなたの商品レビューを入力してください" required></textarea>
	好きな写真:<input type="file" name="part"><br>
	<button type="submit" value="送信">送信</button>
	<img alt="syasinn" src="../assets/image/food_box.png">
	<img alt="syasinn" src="C:\Users\adomin\OneDrive - ooharastudent\デスクトップ\OSNS\image/foodbank_teikyou.png">

</form>

<%@include file="../footer.jsp"%>
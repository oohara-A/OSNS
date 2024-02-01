<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>

<form action="registered.jsp" method="post">

	<h2 class="com_title">お問い合わせフォーム</h2>

	<div class="contact_us">
		<p class="inquiry">お名前</p>
		<input type="text" name="inq_name">
	</div>

	<div class="contact_us">
		<p class="inquiry">メールアドレス</p>
		<input type="email" name="inq_email">
	</div>

	<div class="contact_us">
		<p class="inquiry">電話番号</p>
		<input type="tel" name="inq_phnum">
	</div>

	<div class="contact_us">
		<p class="inquiry">お問い合わせ項目</p>
		<select name="contact_item" id="inquiry">
			<option value="purchase">商品の販売について</option>
			<option value="sample">試供品について</option>
			<option value="review">レビューについて</option>
			<option value="other">その他</option>
		</select>
	</div>

	<div class="contact_us">
		<p class="inquiry">お問い合わせ内容</p>
		<textarea name="inq_detail" rows="5" cols="50" maxlength="1000"></textarea>
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="送信">
	</div>

</form>

<%@include file="../footer.jsp"%>
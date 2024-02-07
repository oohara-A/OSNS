<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../menu.jsp"%>

<style>
h2 {
	margin-top: 6rem;
	font-size: 3.5rem;

}
.contact_us{

}
.contact_us p{
	font-size: 1.5rem;
}
.inq_sending{
	font-size: 1rem;
}
select option{
	font-size: 1.5rem;
}
input {
	margin-bottom: 1rem;
}
</style>


<form action="inquiry_complete.jsp" method="post">

	<h2 class="com_title">お問い合わせフォーム</h2>

	<div class="contact_us">
		<p class="inquiry">お名前</p>
		<input type="text" name="inq_name"required="required">
	</div>

	<div class="contact_us">
		<p class="inquiry">メールアドレス</p>
		<input type="email" name="inq_email"required="required">
	</div>

	<div class="contact_us">
		<p class="inquiry">電話番号</p>
		<input type="tel" name="inq_phnum"required="required">
	</div>

	<div class="contact_us">
		<p class="inquiry">お問い合わせ項目</p>
		<select name="contact_item" id="inquiry"required="required">
			<option value="purchase">商品の販売について</option>
			<option value="sample">試供品について</option>
			<option value="review">レビューについて</option>
			<option value="other">その他</option>
		</select>
	</div>

	<div class="contact_us">
		<p class="inquiry">お問い合わせ内容</p>
		<textarea name="inq_detail" rows="5" cols="50" maxlength="1000"required="required"></textarea>
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="送信">
	</div>

</form>

<%@include file="../footer.jsp"%>
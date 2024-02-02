<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< HEAD
<%@include file="../com_header.jsp"%>
=======
<%@include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<form action="registered.jsp" method="post">

	<h2 class="com_title">企業用お問い合わせ</h2>

	<div class="contact_us">
		<p class="inquiry">お名前</p>
		<input type="text" name="inq_name">
	</div>

	<div class="contact_us">
		<p class="inquiry">企業名</p>
		<input type="text" name="inq_com_name">
	</div>
<<<<<<< HEAD
=======

	<div class="contact_us">
		<p class="inquiry">部署名</p>
		<input type="text" name="inq_de_sign">
	</div>

	<div class="contact_us">
		<p class="inquiry">役職名</p>
		<input type="text" name="inq_job_title">
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
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

	<div class="contact_us">
		<p class="inquiry">部署名</p>
		<input type="text" name="inq_de_sign">
	</div>

<<<<<<< HEAD
	<div class="contact_us">
		<p class="inquiry">役職名</p>
		<input type="text" name="inq_job_title">
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
=======
<%@include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

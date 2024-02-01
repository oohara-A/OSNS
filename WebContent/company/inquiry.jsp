<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
	<div class="back_home">
        <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
	</div>

<form action="inquiry_complete.jsp" method="post">

	<h2 class="com_title">企業用お問い合わせ</h2>

	<div class="contact_us">
		<p class="inquiry">お名前</p>
		<input type="text" name="inq_name">
	</div>

	<div class="contact_us">
		<p class="inquiry">企業名</p>
		<input type="text" name="inq_com_name">
	</div>

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

</form>

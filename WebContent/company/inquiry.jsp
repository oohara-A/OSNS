<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
<style>
.conteiner {
	margin: 0 auto;
	width: 60%;
}
</style>

<div class="back_home">
       <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
</div>
<h2 class="inquiry_title">お問い合わせ</h2>
<hr color="#ff0000" >

<div class="conteiner">
<form action="inquiry_complete.jsp" method="post">

	<div class="contact_us">
	<p class="inquiry">お名前</p>
	<input class="input_inq" type="text" name="inq_name">
	</div>

	<div class="contact_us">
	<p class="inquiry">企業名</p>
	<input class="input_inq" type="text" name="inq_com_name">
	</div>

	<div class="contact_us">
	<p class="inquiry">部署名</p>
	<input class="input_inq" type="text" name="inq_de_sign">
	</div>

	<div class="contact_us">
	<p class="inquiry">役職名</p>
	<input class="input_inq" type="text" name="inq_job_title">
	</div>

	<div class="contact_us">
	<p class="inquiry">メールアドレス</p>
	<input class="input_inq" type="email" name="inq_email">
	</div>

	<div class="contact_us">
	<p class="inquiry">電話番号</p>
	<input class="input_inq" type="tel" name="inq_phnum">
	</div>

	<div class="contact_us">
	<p class="inquiry">お問い合わせ項目</p>
	<select class="input_inq_item" name="contact_item" id="inquiry">
		<option value="purchase">商品の販売について</option>
		<option value="sample">試供品について</option>
		<option value="review">レビューについて</option>
		<option value="other">その他</option>
	</select>
	</div>

	<div class="contact_us">
	<p class="inquiry">お問い合わせ内容</p>
	<textarea class="input_inq_content" name="inq_detail" rows="5" cols="50" maxlength="1000"></textarea>
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="送信">
	</div>

</form>
</div>

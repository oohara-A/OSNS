<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>

<form action="Register_company.action" method="post">

	<h2 class="com_title">企業登録</h2>

	<div class="com_reg">
		<p class="comreg">氏名</p>
		<input type="text" name="com_full_name">
	</div>
	<div class="com_reg">
		<p class="comreg">企業名</p>
		<input type="text" name="company_name">
  			<p>(例)株式会社大原</p>
	</div>

	<div class="com_reg">
		<p class="comreg">所在地</p>
		<input type="text" name="address">
		<p>(例)福岡県北九州市</p>
	</div>

	<div class="com_reg">
		<p class="comreg">メールアドレス</p>
		<input type="email" name="email">
		<p>(例)kkr11111@stu.o-hara.ac.jp</p>
	</div>

	<div class="com_reg">
		<p class="comreg">携帯電話番号</p>
		<input type="tel" name="com_tel">
	</div>

	<div class="com_reg">
		<p class="comreg">パスワード</p>
		<input type="password" name="com_password">
	</div>

	<div class="com_reg">
		<p class="comreg">もう一度パスワード</p>
		<input type="password" name="com_password">
	</div>

	<div class="inq_sending">
		<input class="sending" type="submit" value="次に進む">
	</div>
</form>

<%@include file="../footer.jsp"%>
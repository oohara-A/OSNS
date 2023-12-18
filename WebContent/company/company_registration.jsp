<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>

<<<<<<< HEAD
<form action="Register_company.action" method="post">
=======
<form action="Register_company.action" method="post" enctype="multipart/form-data">
>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961

	<h2 class="com_title">企業登録</h2>

	<div class="com_reg">
		<p class="comreg">氏名</p>
<<<<<<< HEAD
		<input type="text" name="com_full_name">
=======
		<input type="text" name="name">
>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961
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
<<<<<<< HEAD
		<input type="email" name="email">
=======
		<input type="text" name="email">
>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961
		<p>(例)kkr11111@stu.o-hara.ac.jp</p>
	</div>

	<div class="com_reg">
		<p class="comreg">携帯電話番号</p>
<<<<<<< HEAD
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

=======
		<input type="tel" name="phone_number">
	</div>

	<div class="company_info">
	        <label for="companyImage">企業画像:</label>
	        <input  type="file" id="companyImage" name="image_filename" accept="image/*">
	</div>

	<div class="com_reg">
		<p class="comreg">パスワード</p>
		<input type="password" name="password">
	</div>

	<div class="com_reg">
		<p class="comreg">もう一度パスワード</p>
		<input type="password" name="password2">
	</div>

>>>>>>> ac0e97c06eedaa3bf8b1011084f37f98c5bbf961
	<div class="inq_sending">
		<input class="sending" type="submit" value="次に進む">
	</div>
</form>

<%@include file="../footer.jsp"%>
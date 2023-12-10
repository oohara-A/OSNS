<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>

<<<<<<< HEAD
<form action="company_registration_complete.jsp" method="post">
=======
<form action="Register_company.action" method="post">
>>>>>>> e01b2f8c01ac85a2e0dedbf2850153a4440fbe3c

	<h2 class="com_title">企業登録</h2>

	<div class="com_reg">
		<p class="comreg">氏名</p>
		<input type="text" name="com_full_name">
	</div>

<<<<<<< HEAD
	<div class="com_reg">
		<p class="comreg">企業名</p>
		<input type="text" name="com_name">
	</div>
=======
		<div class="com_reg">
			<p class="comreg">企業名</p>
			<input type="text" name="company_name">
   			<p>(例)株式会社大原</p>
		</div>
>>>>>>> e01b2f8c01ac85a2e0dedbf2850153a4440fbe3c

	<div class="com_reg">
		<p class="comreg">所在地</p>
		<input type="text" name="com_address">
	</div>

	<div class="com_reg">
		<p class="comreg">メールアドレス</p>
		<input type="email" name="com_email">
	</div>

<<<<<<< HEAD
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
=======
		<div class="com_reg">
			<p class="comreg">携帯電話番号</p>
			<input type="tel" name="phone_number">
			<p>(例)0120-111-111</p>
		</div>

		<div class="com_reg">
			<p class="comreg">パスワード</p>
			<input type="password" name="password">
		</div>

		<div class="com_reg">
			<p class="comreg">もう一度パスワード</p>
			<input type="password" name="password2">
		</div>
>>>>>>> e01b2f8c01ac85a2e0dedbf2850153a4440fbe3c

	<div class="inq_sending">
		<input class="sending" type="submit" value="次に進む">
	</div>
</form>

<%@include file="../footer.jsp"%>
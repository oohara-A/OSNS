<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
	<title>company_page</title>
	<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

	<div class="back_home">
        <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
	</div>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<form action="company_top_page.jsp" method="post">

	<div class="com_title">
		<h2 class="info._edit">企業情報編集</h2>
	</div>

<<<<<<< HEAD
	<div class ="comed_info">
  		<p class="com_info">氏名</p>
  		<input type="text" name="comed_fullname">
	</div>

	<div class="comed_info">
  		<p class="com_info">企業名</p>
  		<input type="text" name="comed_name">
	</div>

	<div class="comed_info">
  		<p class="com_info">所在地</p>
  		<input type="text" name="comed_address">
	</div>

	<div class="comed_info">
  		<p class="com_info">メールアドレス</p>
  		<input type="email" name="comed_email">
	</div>

	<div class="comed_info">
  		<p class="com_info">携帯電話番号</p>
  		<input type="tel" name="comed_phone">
	</div>

	<div class="comed_info">
  		<p class="com_info">パスワード</p>
  		<input type="password" name="comed_password">
	</div>

	<div class="comed_info">
  		<p class="com_info">もう一度パスワード</p>
  		<input type="password" name="comed_password">
	</div>

	<div class="complete">
  		<input class="com_complete" type="submit" name="ed_complete" value="編集を完了">
	</div>

</form>
=======
	<div class="com_full_name">
		<p class="com_info">氏名</p>
		<input type="text" name="comed_fullname">
	</div>

	<div class="com_name">
		<p class="com_info">企業名</p>
		<input type="text" name="comed_name">
	</div>

	<div class="com_address">
		<p class="com_info">所在地</p>
		<input type="text" name="comed_address">
	</div>

	<div class="com_email">
		<p class="com_info">メールアドレス</p>
		<input type="email" name="comed_email">
	</div>

	<div class="com_mobile">
		<p class="com_info">携帯電話番号</p>
		<input type="tel" name="comed_phone">
	</div>

	<div class="com_password">
		<p class="com_info">パスワード</p>
		<input type="password" name="comed_password">
	</div>

	<div class="next_com_password">
		<p class="com_info">もう一度パスワード</p>
		<input type="password" name="comed_password">
	</div>

	<div class="reg_button">
		<input class="regbutton" type="submit" name="ed_complete"
			value="編集を完了">
	</div>

</form>

<%@include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../com_header.jsp" %>

    <div class="menu-container">
        <%@ include file="../com_menu.jsp" %>
    </div>

<form action="company_top_page.jsp" method="post">

	<div class="com_title">
		<h2 class="info._edit">企業情報編集</h2>
	</div>

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

<%@include file="../footer.jsp" %>
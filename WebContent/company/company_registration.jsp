<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
	<title>company_page</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
</head>

<form action="Edit_comp_info.action" method="post">

	<div class="back_home">
        <a class="backhome" href="../user/index.jsp">ホームに戻る</a>
	</div>

	<div class="com_title">
		<h2 class="company_reg">企業登録</h2>
	</div>

		<div class="com_reg">
			<p class="comreg">氏名</p>
			<input type="text" name="com_full_name">
		</div>

		<div class="com_reg">
			<p class="comreg">企業名</p>
			<input type="text" name="com_name">
		</div>

		<div class="com_reg">
			<p class="comreg">所在地</p>
			<input type="text" name="com_address">
		</div>

		<div class="com_reg">
			<p class="comreg">メールアドレス</p>
			<input type="email" name="com_email">
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
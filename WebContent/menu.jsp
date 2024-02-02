<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<<<<<<< HEAD
<nav class="menu">
	<ul class="menu-list">
		<li class="menu-item">
			<!--カテゴリ選択 --> <select>
				<option>カテゴリ選択</option>
				<option>本</option>
				<option>化粧品</option>
				<option>食料品</option>
		</select>
		</li>
		<li>
		<form action="ProSearch.action">
			<div class="menu-item">
				<input type="text" placeholder="キーワード" name="keyword">
				<button type="submit">検索</button>
			</div>
		</form>
		</li>
		<li class="menu-item">

			<!--カートのページ  --><a href="cart.jsp">カート</a>
		</li>
		<li class="menu-item">
			<!--通知  --> <a href="Messagviewg.action?id=<%=user_id %>">🔔</a>

			<!--カートのページ  --> <a href="cart.jsp">カート</a>
		</li>
		<li class="menu-item">
			<!--通知  --> <a href="#">🔔</a>

		</li>
	</ul>
</nav>

<div>
	<input id="drawer_input" class="drawer_hidden" type="checkbox">
	<label for="drawer_input" class="drawer_open"><span></span></label>
	<nav class="nav_content">
		<ul class="nav_list">
			<li class="nav_item"><a href="#">ブランド名</a></li>
			<li class="nav_item"><a href="#">1000~3000円</a></li>
			<li class="nav_item"><a href="#">試供品</a></li>
		</ul>
	</nav>
</div>

<hr>
=======
 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="../user/index.jsp">OharaSampleNetShop</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                    <li class="nav-item">
                       	<form action="ProSearch.action">
							<div class="menu-item">
								<input	class="nav-linkt type="text" placeholder="キーワード" name="keyword">
								<button type="submit">検索</button>
							</div>
						</form>
					</li>
                        <li class="nav-item"><a class="nav-link" href="../user/account.jsp">アカウント</a></li>
                        <li class="nav-item"><a class="nav-link" href="user_login.jsp">ログイン</a></li>
                        <li class="nav-item"><a class="nav-link" href="Purchasedisp.action?id=<%=user_id%>">注文履歴</a></li>
                        <li class="nav-item"><a class="nav-link"  href="Cartdisp.action?id=<%=user_id%>">カート</a></li>
                        <li class="nav-item"><a class="nav-link" href="Messagviewg.action?id=<%=user_id %>">🔔</a></li>
>>>>>>> e6ab42305ac231d595646d97c858f9c48e0b2b61


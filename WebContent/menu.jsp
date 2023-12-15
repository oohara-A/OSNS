<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

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


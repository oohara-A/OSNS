<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../header.jsp" %>


<nav class="header-nav">
        <ul class="header-navlist">
            <li class="header-navitem">
            	<!--カテゴリ選択 -->
            	<select>
		            <option>カテゴリ選択</option>
		            <option>本</option>
		            <option>化粧品</option>
		            <option>食料品</option>
            	</select>
            </li>
            <li>
            <div class="header-navitem">
			  <input type="text" placeholder="キーワード">
			  <button type="submit">検索</button>
			</div>
            </li>
            <li class="header-navitem">
            	<!--カートのページ  -->
                <a href="#">カート</a>
            </li>
            <li class="header-navitem">
            	<!--通知  -->
                <a href="#">🔔</a>
			</li>
       </ul>
</nav>

<hr>
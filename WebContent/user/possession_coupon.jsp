<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../menu.jsp"%>

<style>
.cart-container{
	padding-top: 100px;
}
	td{
		color: black;
	}
</style>
<c:choose>
<c:when test="${have_coupon!=null }">
<div class="cart-container">
		<h2>所持クーポン一覧</h2>

		<%-- <%@include file="cart_main.jsp"%> --%>
	<table class="cart_table">
		<thead>
			<tr>
				<th>対象商品</th>
				<th>効果</th>
				<th>クーポン名</th>
				<th>クーポンコード</th>
			</tr>
		</thead>
<c:forEach var="coupon" items="${have_coupon}">
		<tbody>
			<tr>
				<td>
					${coupon.coupon_id }
				</td>
				<td >
					${coupon.effect }％割引
				</td>
				<td>
					${coupon.coupon_name }
				</td>
				<td>
					コード: <input type="button" id="${coupon.coupon_id}"  value="${coupon.coupon_code }" onclick="copyToClipboard(this)" readonly>
				</td>
			</tr>
			<!-- Repeat this block for each item in the cart -->
		</tbody>
</c:forEach >
	</table>
	</div>
</c:when>
	<c:otherwise>
		<div class="cart-container">
			<h2>所持クーポン一覧</h2>
			<p class="no_coupon">所持しているクーポンは一つもありません。</p>
		</div>
 	</c:otherwise>
</c:choose>
 <script>
        function copyToClipboard(button) {

        	  // クリップボードにコピーする対象のテキスト
            var couponCode = button.value;

            // テキストエリアを作成してクリップボードにコピー
            var textarea = document.createElement("textarea");
            textarea.value = couponCode;
            document.body.appendChild(textarea);
            textarea.select();
            document.execCommand("Copy");
            document.body.removeChild(textarea);
        }
    </script>
<%@include file="../footer.jsp"%>

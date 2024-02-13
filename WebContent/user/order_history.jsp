<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../menu.jsp"%>


<style>

  .product_list {
    display: flex;
    flex-wrap: wrap;
  }

  .product {
  	display:block;
  	padding-top:40px;
    width: 600px; /* 任意の幅を設定 */
     /* 適切なマージンを設定 */
  }
  .font{
  	font-size: 25px;
  }
  .image_pro{
  	display: flex;
  	padding-top: 20px;
  }
.pro_nam{
	padding-top:-60px;
	padding-left: 40px;
}
.button_his{
	padding-left: 20px;
}
h1 {
	margin-top: 3rem;
}
</style>
<h1>注文履歴</h1>
<c:choose>
<c:when test="${not empty purc_his }">
	<div class="cart-container">
		<%-- <%@include file="cart_main.jsp"%> --%>
		<c:forEach var="purchase" items="${purc_his}">
		<table class="cart_table">
		<thead>
			<tr>
				<td>注文番号:${purchase.id}</td>
				<td>合計金額</td>
				<td>クーポン使用</td>

			</tr>
		</thead>
		<tbody>
		<!-- Sample cart item, repeat this block for each item in the cart -->
			<tr>
				<td>
					お届け先住所：${purchase.deladdress }
				</td>
				<td >
				<div class="image_pro">
					<a href="product_detail.jsp"><img src="../assets/proimage/${purchase.image_filename}" alt="imageなし"  width="230" height="230"></a>
					<div class="pro_inf1">
						<h1 class="pro_nam">${purchase.product_name }</h1>
							<p>単価:${purchase.purchase_price }円</p>
							<p>購入数:${purchase.count }個</p>
							<a class="button_his" href="PurCancel.action?log_number=${purchase.id}"><button> キャンセル</button></a>
					</div>
				</div>
				</td>
				<td>
					${purchase.coupon_id }
				</td>
			</tr>
		<!-- Repeat this block for each item in the cart -->
		</tbody>
	</table>
	</c:forEach >
	</div>
</c:when>
	<c:otherwise>
		<h1>購入履歴はありません！</h1>
	</c:otherwise>
</c:choose>


<%@include file="../footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
	<title>company_page</title>
	<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="company_top.jsp" method="post">
	<div class="back_home">
        <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
	</div>
</form>

<style>
	.cart-container{
	max-width: 1400px;
    margin: 60px auto;
    background-color: #ffffff;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

  .cart_table{
  	font-size: 30px;
  }

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
.title1{
	margin-top: 5rem;
	margin-left: 3rem;
	font-size: 3.5rem;
	color: white;
}
.title2{
	margin-top: 2rem;
	margin-left: 3rem;
	color: white;
}
</style>
<h1 class="title1">発注履歴</h1>
<c:choose>
<c:when test="${not empty com_purc_his }">
	<div class="cart-container">
		<%-- <%@include file="cart_main.jsp"%> --%>
		<c:forEach var="purchase" items="${com_purc_his}">
		<table class="cart_table">
		<thead>
			<tr>
				<td>ユーザ名</td>
				<td>注文番号:${purchase.id}</td>
				<td>合計金額${purchase.purchase_price * purchase.count}</td>
				<td>クーポン使用</td>
			</tr>
		</thead>
		<tbody>
		<!-- Sample cart item, repeat this block for each item in the cart -->
			<tr>
				<td>
					${purchase.user_name}
				</td>
				<td>
					お届け先住所:<br>${purchase.deladdress}
				</td>
				<td >
				<div class="image_pro">
					<img src="../assets/proimage/${purchase.image_filename}" alt="imageなし"  width="230" height="230">
					<div class="pro_inf1">
						<h1 class="pro_nam">${purchase.product_name }</h1>
							<p>単価:${purchase.purchase_price }円</p>
							<p>購入数:${purchase.count }個</p>
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
		<h1 class="title2">発注履歴はありません！</h1>
	</c:otherwise>
</c:choose>
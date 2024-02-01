<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu.jsp"%>

<style>
body {
  margin: 0;
}

/*
section
*/
.section{
    padding: 30px 15px;
}
.section.section-secounday{
    background-color: #efefef;
}
.section-headline{
    /* text-align・・・中央よせ */
    text-align: center;
    font-size: 40px;
    /* 太字にする */
    font-weight:bold ;
    margin:  0 0 40px;
}
.section-button{
    margin-top: 40px;
    text-align: center;
}
.grid{
	display: flex;
    flex-wrap: wrap;
    margin: 0;
    padding-left:10px;
    display: flex;
    /* align-items・・・display: flexがつく要素を中央揃えにする */
    align-items: center;
    /* コンテンツ真ん中 */
    /* justify-content: center; */
}
.grid-item{
    list-style: none;
    padding-left: 15px;
    padding-top: 10px;

}

/*
card
 */
.card{
    padding: 0 10px;
}
.card-link{
    display: block;
    color: black;
    text-decoration: none;
    position: relative;
    transition:  background-color .25s;
}
.card-link:hover{
    background-color: #eee;
}
.card-label{
    position: absolute;
    left: 0;
    top: 0;
    background-color: #999;
    display: block;
    padding: 5px 10px;
    font-size: 12px;
}
.card-image{
	padding-left:20px;
	width: 250px;
	height: 250px;
}
.card-info{
    padding:  5px 10px;
}
/* .card-time{

} */
.card-hedline{
    margin: 0;
}
.product_detail{

	padding-top: 50px;

	}
  .detail_img {
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
</style>
<c:choose>
<c:when test="${cart != null }">
	<div class="cart-container">
		<h2>マイカート</h2>
		<table class="cart_table">
	<thead>
		<tr>
			<th>製品</th>
			<th>価格</th>
			<th>数量</th>
			<th>合計</th>
			<th>操作</th>
		</tr>
	</thead>
<c:forEach var="cart" items="${cart}">
	<tbody>
		<!-- Sample cart item, repeat this block for each item in the cart -->

			<tr>
				<td><a href="product_detail.jsp">
						<img   src="../assets/proimage/${cart.file_name}" alt="imageなし"  width="80" height="80">
					</a>
				</td>

				<td >￥:${cart.unit_price }</td>

				<td><input id="number" type="number" size="auto" value="${cart.order_count}"></td>
				<td>￥:${cart.order_count * cart.unit_price}</td>
				<td>
				<a href="Cartdel.action?id=${cart.cart_id}">
					<button id="delete">
						<p>削除</p>
					</button>
				</a>
				</td>
			</tr>

		<!-- Repeat this block for each item in the cart -->
		</tbody>
		</c:forEach >
	</table>
	<div class="cart-summary">
		<p >
			カート内数量: <span id="total-items">0</span>
		</p>
		<p>
			カート内合計￥:<span id="subtotal">10000</span>
		</p>
	</div>
		<button onclick="location.href='cash_register.jsp'">レジに進む</button>
	</div>
	</c:when>
	<c:otherwise>
		<div class="cart-container">
			<h2>マイカート</h2>
			<p>カートに商品がありません</p>
		</div>
	</c:otherwise>
	</c:choose>
	<hr>
	<p>おすすめ商品</p>
	 <section class="section">
    <ul class="grid grid-col-3">
    <c:forEach var="product_cate" items="${product_category}">
            <li class="grid-item">
                <!--article・・・一固まりで完結するコンテンツ  -->
               <article class="card">
                <a href="Prodetail.action?id=${product_cate.id}" class="card-link">
                    <img class="card-image" src="<%=request.getContextPath() %>/assets/proimage/${product_cate.image_filename}" alt="thumnail">
                    <div class="card-info">
                        <time class="card-time" datetime="2022-01-01">2022.01.01<time>
                            <h1 class="card-hedline">${product_cate.product_name }</h1>
                            <p class="card-description">￥:${product_cate.unit_price}</p>
                            <p class="card-description">★★★★☆</p>
                    </div>
                </a>
               </article>
            </li>
      </c:forEach>
       </ul>
    </section>
	<script>
            function deleteCartItem(button) {
                // バリデーションを無効にする

                // バリデーションを通過した場合、削除ロジックを実行
                var confirmation = confirm("本当に削除しますか？");
                if (confirmation) {
                    // ここに削除ロジックを追加
                    // 例: カートアイテムを削除するAPI呼び出しや表示の更新
                    console.log("削除ボタンがクリックされました。");
                } else {
                    // キャンセル時の処理
                    console.log("削除がキャンセルされました。");
                }
            }
        </script>

<%@include file="../footer.jsp"%>
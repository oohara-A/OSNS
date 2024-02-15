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
    padding: 5px 15px;
    text-align: center;
    margin-left: 3%;
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

.box {
	width: 60%;
	height: 715px;
	margin-left: auto;
	background-color: white;
}
.cart_box {
  width: 300px;
  height: 400px;
  margin: 2em;
  border: solid 3px black;
  border-radius: 15px;
  padding-top: 20px;
  background-color: white;
}
.cart_box p {
	font-size: 25px;
	padding-left: 20px;
}

.box .pro_name{
	font-size: 70px;
	padding-left: 15px;
}

.pro_detail{
	font-size: 35px;
	padding-left: 20px;
}
.com_box {
	width: 600px;
	height: 330px;
	border: solid 1px black;
	padding-left: 5px;
	margin-left: 20px;
}
.pro_description {
	font-size: 35px;
}

.description {
	font-size: 20px;
}
.pro_img img{
	margin-top: 120px;
	margin-left: 100px;
}

.title1 {
	text-align: center;
    color: white;
    padding-left: 3rem;
    font-size: 3.5rem;
}

.card-description{
	font-size: 37px;
}

.card-description-evaluation{
	font-size: 25px;
}

</style>
<div class="product_detail">
<c:forEach var="prodetail" items="${product_detail}">
	<div class="pro_img">
		<img alt="商品画像" src="<%=request.getContextPath() %>/assets/proimage/${prodetail.image_filename}"width="30%"height="30%">
	</div>
	<div class="product_box">
		<div class="box">
			<p class="pro_name">${prodetail.product_name}</p>
			<hr>
			<p class="pro_detail">￥${prodetail.unit_price}</p>
			<p class="pro_detail">ポイント  ${(prodetail.unit_price * 0.001)}</p>

			<p class="pro_detail">在庫 ${prodetail.regiinvqua }</p>
			<div class="com_box">
				<p class="pro_description">この商品について</p>

				<p class="description">・${prodetail.product_description }</p>
			</div>
		</div>

		<div class="cart_box">
			<p>在庫:${prodetail.regiinvqua }</p>
			<form action="Cartadd.action">
				<p>数量:<input  type="number" name="cnt" min="1" max="100"  required="required"></p>
				<p>カート<button type="submit" name="id" value="${prodetail.id }">追加</button></p>
			</form>
		</div>
	</div>
</c:forEach>
</div>
	<hr>
	<h1 class="title1">おすすめ商品</h1>

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
	               <p class="card-description">￥${product_cate.unit_price}</p>
	               <p class="card-description-evaluation">★★★★☆</p>
	           </div>
	       	</a>
	       </article>
	    </li>
    </c:forEach>
    </ul>
 </section><hr>

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
	                <p class="card-description">￥${product_cate.unit_price}</p>
	                <p class="card-description-evaluation">★★★★☆</p>
	            </div>
	        </a>
	       </article>
	    </li>
     </c:forEach>
     </ul>
 </section>
 <%@include file="../user/review.jsp"%>
<%@include file="../footer.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../menu.jsp"%>
<%@include file="../headtwo.jsp"%>
<style>
.account_box a{
color: white;
}
.product_title {
color: white;
font-size: 350%;
margin-top: 1%;
text-align: center;
}

.account_box {
  width: 230px;
  height: 50px;
  margin: 5em;
  display: inline-block;
  margin-top: auto;
  margin-bottom: auto;
}

	*,
*:before,
*:after {
  -webkit-box-sizing: inherit;
  box-sizing: inherit;
}

html {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

.btn,
a.btn,
button.btn {
  font-size: 1.6rem;
  font-weight: 700;
  line-height: 1.5;
  position: relative;
  display: inline-block;
  padding: 1rem 4rem;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  text-align: center;
  vertical-align: middle;
  text-decoration: none;
  letter-spacing: 0.1em;
  color: #212529;
  border-radius: 0.5rem;
}

.account_box,
a.account_box {
  color: #fff;
  background-color: #eb6100;
}

.account_box:hover,
a.account_box:hover {
  color: #fff;
  background: black;
}

.account {
  text-align: center;
  /* ボックスを中央に配置する */
}

.account_box .ac_change{
font-size: 30px;
text-decoration: none;
margin-top: 45%;
margin-bottom: 50%;
}

body {
  margin: 0;
}

/*
section
*/
.section{
    padding: 5px 15px;
    text-align:center;
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

	padding-top: 50px;}
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

 <hr>
	 <div class="account">

	     <div class="account_box">
	         <a href="Adressdisp.action" class="ac_change">住所追加・変更</a>
	     </div>

	     <div class="account_box">
	         <a href="user_profile.jsp" class="ac_change">ユーザ情報変更</a>
	     </div>

	     <div class="account_box">
	         <a href="Coupondisp.action" class="ac_change">クーポン一覧</a>
	     </div>

	     <div class="account_box">
	         <a href="deregistration.jsp" class="ac_change">登録解除</a>
	     </div>
	 </div>
 <hr>

 <h4 class="product_title">おすすめ商品</h4>

 <section class="section">
     <ul class="grid grid-col-3">
         <c:forEach var="product_cate" items="${product_category}">
             <li class="grid-item">
                 <!--article・・・一固まりで完結するコンテンツ  -->
                 <article class="card">
                     <a href="Prodetail.action?id=${product_cate.id}" class="card-link">
                         <img class="card-image"
                             src="<%=request.getContextPath() %>/assets/proimage/${product_cate.image_filename}"
                             alt="thumnail">
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
 <hr>

	 <h4 class="product_title">商品</h4>

	 <section class="section">
	     <ul class="grid grid-col-3">
	         <c:forEach var="product_cate" items="${product_category}">
	             <li class="grid-item">
	                 <!--article・・・一固まりで完結するコンテンツ  -->
	                 <article class="card">
	                     <a href="Prodetail.action?id=${product_cate.id}" class="card-link">
	                         <img class="card-image"
	                             src="<%=request.getContextPath() %>/assets/proimage/${product_cate.image_filename}"
	                             alt="thumnail">
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

 <%@include file="../footer.jsp" %>
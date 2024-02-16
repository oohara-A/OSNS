
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../menu.jsp"%>

        <style>

td{
    color: white;
}
.container {
    display: flex;
}

.box {
    width: 400px;
    height: 400px;
    position: relative;
    display: flex;
}

.add-button {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: pink;
    color: white;
    border: none;
    padding: 20px 20px;
    font-size: 60px;
    cursor: pointer;
    border-radius: 5px;
}

.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    justify-content: center;
    align-items: center;
}



 .modal-content {
    background-color: #fefefe;
	padding: 20px;
	border-radius: 5px;
	text-align: center;
 }

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    cursor: pointer;
}

 .close:hover {
    color: black;
}

.add{
    font-size: 50px;
    position: absolute;
	top: 30%;
    margin-left:-300px;
}
.partner{
    display: flex;
    padding-top: 50px;
    padding-left: 23%;
}

body {
  	margin: 0;
}

/*
section
*/
.section {
    padding: 5px 15px;
    text-align: center;
    margin-left: 3%;
    margin-bottom: 4%;
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

  .close-button{
  	margin-top: 1%;
  	width: 9%;
  	padding: 0.5%;
  }

.form-group{
	margin-top: 1%;
}
  .card-description {
  	font-size: 205%;
  }

  .card-description-evaluation{
  	font-size: 145%;
  }

  .product_title {
color: white;
font-size: 350%;
margin-top: 1%;
text-align: center;
}
</style>

      <div class="container">
      	<div class="partner">
	      <c:choose>
			<c:when test="${Address!=null}">
				<c:forEach var="Address" items="${Address}">
				<div class="box">
					<table class="cart_table">
					<thead>
						<tr>
							<th>住所</th>
						</tr>
					</thead>
					<tbody>
				<!-- Sample cart item, repeat this block for each item in the cart -->
					<tr>
						<td>${Address.address}</td>
					</tr>
				<!-- Repeat this block for each item in the cart -->
			</tbody>
			</table>
			</div>
		         </c:forEach>

	        </c:when>
			<c:otherwise>
				<div class="box">
		                <h1>現在の住所は登録されていません</h1>
		         </div>
			</c:otherwise>
		</c:choose>

            <div class="box">
                <h1>新しい住所を追加</h1>
                <button class="add-button" onclick="openModal()">＋</button>
            </div>
            </div>
        </div>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>

                <h2>登録画面</h2>

                <form class="checkout-form" action="AddressAdd.action">
                    <div class="form-group">
                        <label for="country">　　　　　　国:</label>
                        <input type="text" id="country" name="country" required placeholder="日本">
                    </div>

                    <div class="form-group">
                        <label for="name">　　　　　氏名:</label>
                        <input type="text" id="name" name="name" required placeholder="大原太郎">
                    </div>

                    <div class="form-group">
                        <label for="phone">　　　電話番号:</label>
                        <input type="text" id="phone" name="phone" required placeholder="093-551-0820">
                    </div>

                    <div class="form-group">
                        <label for="post">　　　郵便番号:</label>
                        <input type="text" id="post" name="post" required placeholder="802-0002">
                    </div>

                    <div class="form-group">
                        <label for="prefecture">　　　都道府県:</label>
                        <input type="text" id="prefecture" name="prefecture" required placeholder="福岡県">
                    </div>

                    <div class="form-group">
                        <label for="municipalities">　　　市区町村:</label>
                        <input type="text" id="municipalities" name="municipalities" required placeholder="北九州市小倉北区京町">
                    </div>

                    <div class="form-group">
                        <label for="street">丁目・番地・号:</label>
                        <input type="text" id="street" name="street" required placeholder="3-9-20">
                    </div>

                    <div class="form-group">
                        <label for="building">建物名／会社名:</label>
                        <input type="text" id="building" name="building" required placeholder="大原学園">
                    </div>

                    <div class="form-group">
                        <label for="room">　　　部屋番号:</label>
                        <input type="text" id="room" name="room" required placeholder="602">
                    </div>
					<button type="submit" class="close-button" >登録</button>
                </form>

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
                    <img class="card-image" src="<%=request.getContextPath() %>/assets/proimage/${product_cate.image_filename}" alt="thumnail">
                    <div class="card-info">
                        <time class="card-time" datetime="2022-01-01">2022.01.01<time>
                            <h1 class="card-hedline">${product_cate.product_name }</h1>
                            <p class="card-description">￥:${product_cate.unit_price}</p>
                            <p class="card-description-evaluation">★★★★☆</p>
                    </div>
                </a>
               </article>
            </li>
      </c:forEach>
       </ul>
    </section><hr>


        <script>
            function openModal() {
                document.getElementById("myModal").style.display = "flex";
            }

            function closeModal() {
                document.getElementById("myModal").style.display = "none";
            }
        </script>



        <%@include file="../footer.jsp" %>
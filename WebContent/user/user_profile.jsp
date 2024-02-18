<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../menu.jsp"%>

<style>
.user_info{
	padding-top: 80px;
	max-width: 800px;
    margin: 80px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.us_info{
	font-size: 38px;
}

h1 {
    text-align: center;
}

   .container {
       display: flex;
       justify-content: center;
   }

   .box {
       border: 10px solid #ccc;
       padding: 20px;
       margin: 30px;
       width: 1000px;

   }

   .sending{
  	width: 20%;
  	margin: 0 auto; /* 中央寄せ */
  	max-width: 500px;
}

   .box-item {
       display: flex;
       justify-content: space-between;
       align-items: center;
       margin-bottom: 20px;
   }

   .content-with-button {
       display: flex;
       align-items: center;
       justify-content: space-between;
   }

   .add-button {
       padding: 20px 20px;
       background-color: #198754;
       color: white;
       border: none;
       border-radius: 4px;
       cursor: pointer;
       font-size: 15px;
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
       padding: 50px;
       border-radius: 5px;
       width:42%;

   }

   .close {
       color: #aaa;
       float: right;
       font-size: 45px;
       font-weight: bold;
       cursor: pointer;
   }

   .close:hover {
       color: black;
   }
   body {
  margin: 0;
}

body {
  margin: 0;
}

*, *::before, *::after {
    box-sizing: border-box;
    text-align: center;
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

input.reg{
	width: 45%;
	padding: 3%;
}

button.close-button{
	width: 12%;
	padding: 1.5%;
	margin-left: 1%;
	background-color: #198754;
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

.log-error{
	text-align: center;
}
.log_error_container{
	text-align: center;
    background-color: white;
    width: 33%;
    margin: 7% auto;
    padding: 2% 0%;
    border-radius: 35px;
}
.log_error{
	color: red;
    font-size: 400%;
    margin-bottom: 7%;
}

.error-mark{
	width: 15%;
}
.error_message p{
	font-size: 200%;
	margin-top: 8%;
}
a.sending {
	display: flex;
    justify-content: space-evenly;
    align-items: center;
    text-align: center;
    text-decoration: none;
    width: 220px;
    margin: auto;
    padding: 1rem 4rem 1rem 3rem;
    font-weight: bold;
    background: #198754;
    color: #fff;
    border-radius: 100vh;
    position: relative;
    transition: 0.3s;
    border: solid;

}
a.sending::before {
	content: '';
	width: 7px;
	height: 7px;
	border-top: 2px solid #fff;
	border-right: 2px solid #fff;
	transform: rotate(45deg);
}
a.sending:hover {
	background: #fff;
	color: #000000;
}
.inq_sending{
	margin-top: 7%;
}
</style>



       <c:choose>
		<c:when test="${user!=null}">

	        <c:forEach var="use" items="user">
	        <div class="user_info">
	        <h1>アカウント情報の更新</h1>
	        <div class="container">
	            <div class="box">
	                <div class="box-item">
	                    <p class="us_info"> お名前:${user.user_name}</p>
	                    <button class="add-button" onclick="openModal('name')">
	                        変更
	                    </button>
	                </div>

	                <div class="box-item">
	                    <p class="us_info">Eメール:${user.email}</p>
	                    <button class="add-button" onclick="openModal('mail')">
	                        変更
	                    </button>
	                </div>

	                <div class="box-item">
	                    <p class="us_info">電話番号:</p>
	                    <button class="add-button" onclick="openModal('phone')">
	                        変更
	                    </button>
	                </div>

	                <div class="box-item">
	                    <p class="us_info">パスワード:＊＊＊＊＊</p>
	                    <button class="add-button" onclick="openModal('pass')">
	                変更
	            </button>
	                </div>
	<!--
	                <div class="box-item">
	                    2段階認証:
	                    <button class="add-button" onclick="openModal('2fa')">
	                        変更
	                    </button>
	                </div> -->

	            </div>

	        </div>
		</div>
 </c:forEach>
</c:when>

	<c:otherwise>

	<form action="user_login.jsp" method="post">
		<div class="log-error">
			<div class="log_error_container">
				<h1 class="log_error">ログインエラー</h1>
				<div class="error_message">
					<img class="error-mark" alt="エラーマーク" src="https://upload.wikimedia.org/wikipedia/commons/3/34/ErrorMessage.png">
					<p>ログインをしてください！</p>
				</div>

				<div class="inq_sending">
					<a class="sending" type="submit" href="../user/user_login.jsp">ログイン</a>
				</div>
			</div>
		</div>
	</form>
	</c:otherwise>
</c:choose>



<!--入力欄表示  -->
        <div id="nameModal" class="modal">
            <div class="modal-content">
            <form action="Editpro.action">
                <span class="close" onclick="closeModal('name')">&times;</span>
                <!-- ユーザー名の入力フィールド -->
                <input type="text" id="nameInput" name="nameInput" class="reg" placeholder="ユーザー名を入力">
                <!-- 登録ボタン -->
               <button type="submit" class="close-button">登録</button>
              </form>
            </div>
        </div>

        <div id="mailModal" class="modal">
            <div class="modal-content">
             <form action="Editpro.action">
                <span class="close" onclick="closeModal('mail')">&times;</span>
                <!-- メールの入力フィールド -->
                <input type="text" id="mailInput" name="mailInput" class="reg" placeholder="メールアドレスを入力">
                <!-- 登録ボタン -->
                <button class="close-button" type="submit" >登録</button>
                </form>
            </div>
        </div>

        <div id="phoneModal" class="modal">
            <div class="modal-content">
             <form action="">
                <span class="close" onclick="closeModal('phone')">&times;</span>
                <!-- 電話番号の入力フィールド -->
                <input type="text" id="phoneInput" name="phoneInput" class="reg" placeholder="電話番号を入力">
                <!-- 登録ボタン -->
                <button class="close-button" type="submit">登録</button>
                </form>
            </div>
        </div>

        <div id="passModal" class="modal">
            <div class="modal-content">
             <form action="Editpro.action">
                <span class="close" onclick="closeModal('pass')">&times;</span>
                <!-- 電話番号の入力フィールド -->
                <input type="text" id="passInput" name="passInput"  class="reg" placeholder="パスワードを入力">
                <!-- 登録ボタン -->
                <button class="close-button" type="submit">登録</button>
                </form>
            </div>
        </div>


        <div id="2faModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('2fa')">&times;</span>
                <!-- 2段階認証の入力フィールド -->
                <input type="text" id="2faInput" name="2faInput" class="reg" placeholder="2段階認証を入力">
                <!-- 登録ボタン -->
                <button class="close-button" type="submit">登録</button>
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
    </section>

        <script>
            function openModal(type) {
                document.getElementById(type + "Modal").style.display = "flex";
                clearInputFields(type);
            }

            function closeModal(type) {
                document.getElementById(type + "Modal").style.display = "none";
            }

            function register(type) {
                var inputValue = document.getElementById(type + "Input").value;
                closeModal(type);
            }

            function clearInputFields(type) {
                document.getElementById(type + "Input").value = "";
            }

            function redirectToPasswordChange() {
                window.location.href = "passwordChange.jsp";
            }
        </script>

  <%@include file="../footer.jsp" %>
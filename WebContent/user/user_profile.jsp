<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../menu.jsp"%>

<style>
.user_info{
	padding-top: 80px;
}
p{
	font-size: 25px;


	}
   h1 {
       text-align: center;


   }
   .container {
       display: flex;
       justify-content: center;

   }

   .box {
       border: 1px solid #ccc;
       padding: 10px;
       margin: 10px;
   }

   .box-item {
       display: flex;
       justify-content: space-between;
       align-items: center;
       margin-bottom: 10px;
   }

   .content-with-button {
       display: flex;
       align-items: center;
       justify-content: space-between;
   }

   .add-button {
       padding: 8px 16px;
       background-color: #4CAF50;
       color: white;
       border: none;
       border-radius: 4px;
       cursor: pointer;
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
   body {
  margin: 0;
}

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

	<div class="user_info">
        <h1>アカウント情報の更新</h1>
       <c:choose>
		<c:when test="${user!=null}">

	        <c:forEach var="use" items="user">
	        <div class="container">
	            <div class="box">
	                <div class="box-item">
	                    <p> お名前:${user.user_name}</p>
	                    <button class="add-button" onclick="openModal('name')">
	                        変更
	                    </button>
	                </div>

	                <div class="box-item">
	                    <p>Eメール:${user.email}</p>
	                    <button class="add-button" onclick="openModal('mail')">
	                        変更
	                    </button>
	                </div>

	                <div class="box-item">
	                    <p>電話番号:</p>
	                    <button class="add-button" onclick="openModal('phone')">
	                        変更
	                    </button>
	                </div>

	                <div class="box-item">
	                    <p>パスワード:＊＊＊</p>
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

 </c:forEach>
</c:when>

	<c:otherwise>

				<div class="inq_sending">
						<h1>ログインしてください</h1>
					<a href="user_login.jsp"><input class="sending" type="submit" value="ログイン"></a>
				</div>
	</c:otherwise>
</c:choose>
 </div>


<!--入力欄表示  -->
        <div id="nameModal" class="modal">
            <div class="modal-content">
            <form action="Editpro.action">
                <span class="close" onclick="closeModal('name')">&times;</span>
                <!-- ユーザー名の入力フィールド -->
                <input type="text" id="nameInput" name="nameInput" placeholder="ユーザー名を入力">
                <!-- 登録ボタン -->
               <button type="submit" class="close-button" >登録</button>
              </form>
            </div>
        </div>

        <div id="mailModal" class="modal">
            <div class="modal-content">
             <form action="Editpro.action">
                <span class="close" onclick="closeModal('mail')">&times;</span>
                <!-- メールの入力フィールド -->
                <input type="text" id="mailInput" name="mailInput" placeholder="メールアドレスを入力">
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
                <input type="text" id="phoneInput" name="phoneInput" placeholder="電話番号を入力">
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
                <input type="text" id="passInput" name="passInput" placeholder="パスワードを入力">
                <!-- 登録ボタン -->
                <button class="close-button" type="submit">登録</button>
                </form>
            </div>
        </div>


        <div id="2faModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('2fa')">&times;</span>
                <!-- 2段階認証の入力フィールド -->
                <input type="text" id="2faInput" name="2faInput" placeholder="2段階認証を入力">
                <!-- 登録ボタン -->
                <button class="close-button" type="submit">登録</button>
            </div>
        </div>

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

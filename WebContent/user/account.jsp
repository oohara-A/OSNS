<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp"%>

<%@include file="../footer.jsp"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>
        <style>
            .account_box {
                width: 120px;
                height: 96px;
                margin: 1em;
                /* 必要に応じてマージンを調整してください */
                border: solid 3px black;
                display: inline-block;
                /* ボックスを一列に表示する */
            }

            .account {
                text-align: center;
                /* ボックスを中央に配置する */
            }
        </style>

        <hr>
        <div class="account">

            <div class="account_box">
                <a href="user_address.jsp">住所追加・変更</a>
            </div>

            <div class="account_box">
                <a href="user_profile.jsp">ユーザ情報変更</a>
            </div>

            <div class="account_box">
                <a href="passwordChange.jsp">パスワード変更</a>
            </div>

            <div class="account_box">
                <a href="user_pay.jsp">支払い方法追加</a>
            </div>

            <div class="account_box">
                <a>OSNS</a>
            </div>

            <div class="account_box">
                <a>登録解除</a>
            </div>

            <div class="account_box">
                <a>FUCKYOU</a>
            </div>
        </div>
        <hr>
        <h4>おすすめ商品</h4>

        <div class="detail_img">


            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>
        </div>

        <hr>
        <h4>商品</h4>

        <div class="detail_img">
            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>

            <div class="img">
                <img alt="商品画像" width="100" height="100" src="../assets/image/food_box.png">
            </div>
        </div>
        <%@include file="../footer.jsp" %>
>>>>>>> e01b2f8c01ac85a2e0dedbf2850153a4440fbe3c

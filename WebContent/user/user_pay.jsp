
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>

<<<<<<< HEAD
        <style>
            .container {
                display: flex;
            }

            .box {
                width: 300px;
                height: 300px;
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
        </style>

        <hr>

        <div class="container">
            <div class="box">
                <h1>現在の支払方法</h1>
            </div>

            <div class="box">
                <h1>新しい支払方法追加</h1>
                <button class="add-button" onclick="openModal()">＋</button>
            </div>
        </div>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>

                <h2>登録画面</h2>

                <form class="checkout-form" onsubmit="return validateForm()">
                <div class="form-group">
                        <label for="room">支払方法:</label>
                        <input type="text" id="pay" name="pay" required placeholder="クレジット">
                    </div>


                </form>
                <button class="close-button" onclick="closeModal()">登録</button>
            </div>
        </div>

        <hr>

        <p>おすすめ商品</p>

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



        <script>
            function openModal() {
                document.getElementById("myModal").style.display = "flex";
            }

            function closeModal() {
                document.getElementById("myModal").style.display = "none";
            }
        </script>



        <%@include file="../footer.jsp" %>
=======
<%@include file="../footer.jsp" %>
>>>>>>> 8bb6f1ff6ee19b6530e1890ba8dc9320d42daf47

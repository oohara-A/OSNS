<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>

        <style>
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
        </style>

        <hr>
        <h1>アカウント情報の更新</h1>
        <div class="container">

            <div class="box">

                <div class="box-item">
                    お名前:
                    <button class="add-button" onclick="openModal('name')">
                        変更
                    </button>
                </div>

                <div class="box-item">
                    Eメール:
                    <button class="add-button" onclick="openModal('mail')">
                        変更
                    </button>
                </div>

                <div class="box-item">
                    電話番号:
                    <button class="add-button" onclick="openModal('phone')">
                        変更
                    </button>
                </div>

                <div class="box-item">
                    パスワード:
                    <button class="add-button" onclick="redirectToPasswordChange()">
                変更
            </button>
                </div>

                <div class="box-item">
                    2段階認証:
                    <button class="add-button" onclick="openModal('2fa')">
                        変更
                    </button>
                </div>
            </div>

        </div>

        <div id="nameModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('name')">&times;</span>
                <!-- ユーザー名の入力フィールド -->
                <input type="text" id="nameInput" name="nameInput" placeholder="ユーザー名を入力">
                <!-- 登録ボタン -->
                <button class="close-button" onclick="register('name')">登録</button>
            </div>
        </div>

        <div id="mailModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('mail')">&times;</span>
                <!-- メールの入力フィールド -->
                <input type="text" id="mailInput" name="mailInput" placeholder="メールアドレスを入力">
                <!-- 登録ボタン -->
                <button class="close-button" onclick="register('mail')">登録</button>
            </div>
        </div>

        <div id="phoneModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('phone')">&times;</span>
                <!-- 電話番号の入力フィールド -->
                <input type="text" id="phoneInput" name="phoneInput" placeholder="電話番号を入力">
                <!-- 登録ボタン -->
                <button class="close-button" onclick="register('phone')">登録</button>
            </div>
        </div>


        <div id="2faModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('2fa')">&times;</span>
                <!-- 2段階認証の入力フィールド -->
                <input type="text" id="2faInput" name="2faInput" placeholder="2段階認証を入力">
                <!-- 登録ボタン -->
                <button class="close-button" onclick="register('2fa')">登録</button>
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../header.jsp" %>

        <style>
            .box {
                width: 300px;
                height: 300px;
                position: relative;
            }

            .add-button {
                position: absolute;
                top: 10px;
                right: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 10px 15px;
                font-size: 16px;
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
        <div class="box">
            <h1>現在の住所</h1>
        </div>

        <div class="box">
            <h1>新しい住所を追加</h1>
            <button class="add-button" onclick="openModal()">＋</button>
        </div>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal()">&times;</span>

                <!-- ここに登録画面のコンテンツを追加 -->
                <h2>登録画面</h2>

                <form class="checkout-form" onsubmit="return validateForm()">
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

                </form>
                <button class="close-button" onclick="closeModal()">登録</button>
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
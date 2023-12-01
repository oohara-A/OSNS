<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../menu.jsp" %>

        <div class="product_detail">
            <div class="product_box">

                <img alt="商品画像" src="../assets/image/food_box.png">
                <div class="box">
                    <p>商品名:</p>
                    <p>価格:</p>
                    <p>ポイント:</p>
                    <p>クーポン:</p>
                </div>

                <div class="box">
                    <p>在庫:</p>
                    <p>数量:<input name="cnt" type="number" size="2" value="1" min="1"></p>
                    <p>カート<button onclick="location.href='#'">追加</button></p>
                    <p>購入:</p>
                </div>
            </div>

            <div class="com_box">
                <p>商品説明文</p>
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

            <hr>

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
</div>



        <%@include file="../user/test.jsp" %>
        <%@include file="../footer.jsp" %>
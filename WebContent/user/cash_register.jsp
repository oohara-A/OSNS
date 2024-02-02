<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../menu.jsp"%>

<style>
.border{
	transform: translate(35%, 80px);
	margin-bottom: 100px;
}
h1{
	color: white;
}
label{
	color: white;
}

</style>



    <div class="border col-7">
        <br>
        <h2>注文情報入力</h2>
        <h2>1.受け取り場所</h2>
        <br>
        <div class="row">
            <div class="col-md">
                <form action="Purchase.action" method="post">
                    <div class="form-group">
                        <label for="country">国:</label>
                        <input required  id="country"name="country" type="text" class="form-control" placeholder="日本">
                    </div>
                    <div class="form-group">
                        <label>氏名：</label>
                        <input required  id="name" name="name"  type="text" class="form-control" placeholder="大原 太郎">
                    </div>

                    <div class="form-group">
                        <label>電話番号</label>
                        <input required  id="phone" name="phone" type="text" class="form-control" placeholder="093-551-0820">
                    </div>
                    <div class="form-group">
                        <label>郵便番号：</label>
                        <input required  id="post"  name="post" type="text" class="form-control" placeholder="802-0002">
                    </div>
                    <div class="form-group">
                        <label>都道府県：</label>
                        <input required  id="prefecture" name="prefecture" type="text" class="form-control" placeholder="福岡県">
                    </div>
                    <div class="form-group">
                        <label>市町村：</label>
                        <input required  id="municipalities" name="municipalities" type="text" class="form-control" placeholder="北九州市小倉北区京町">
                    </div>
                    <div class="form-group">
                        <label>丁目・番地・号:</label>
                        <input required  id="street" name="street" type="text" class="form-control" placeholder="北九州市小倉北区京町">
                    </div>
                    <div class="form-group">
                        <label>建物名／会社名:</label>
                        <input required  id="building" name="building" type="text" class="form-control" placeholder="大原学園">
                    </div>
                     <div class="form-group">
                        <label>部屋番号:</label>
                        <input type="text" id="room"
								name="room" required placeholder="602">
                    </div>

                    <h1>2.支払方法</h1>
					 <div class="form-group">
                        <label>クーポンを使用する</label>
                        <input onclick="toggleCouponInput()" type="radio" id="coupon" name="coupon" class="form-control" >
                    </div>
                    <div id="coupon-input" style="display: none;">
					<h4>クーポンコード入力</h4>
					<div class="form-group">
					<label for="coupon-code">クーポンコード:</label>
                        <input id="coupon-code" name="coupon-code" placeholder="クーポンコードを入力" >
                       </div>
					<button type="button" onclick="toggleCouponInput()">キャンセル</button>

				</div>
				<div class="row center-block text-center">
            <div class="col-1">
            </div>
            <div class="col-5">
                <button  type="submit" class="btn btn-outline-secondary btn-block">購入確定</button>
            </div>
        </div>
        <div class="col-1">
        </div>
                </form>
            </div>
        </div>
        <br>
    </div>

<script>

            function validateForm(event) {

                event = event || window.event;

                var submitButton = (event && event.submitter) ? event.submitter : null;

                if (submitButton && submitButton.id === "delete") {
                    return true;
                }

                if (submitButton && submitButton.type === "submit") {

                    // 必須フィールドの値を取得
                    var country = document.getElementById('country').value;
                    var name = document.getElementById('name').value;
                    var phone = document.getElementById('phone').value;
                    var post = document.getElementById('post').value;
                    var prefecture = document.getElementById('prefecture').value;
                    var municipalities = document.getElementById('municipalities').value;
                    var street = document.getElementById('street').value;
                    var building = document.getElementById('building').value;
                    var room = document.getElementById('room').value;

                    // バリデーションを実行
                    if (country.trim() === '' || name.trim() === '' || phone.trim() === '') {
                        alert('必須の住所情報フィールドを全て入力してください。');
                        return false; // フォームの送信を防止
                    }

                    // 他のバリデーションが必要であれば追加

                    // すべてのバリデーションが通過した場合、フォームの送信を許可
                    window.location.href = 'fin_cash.jsp';

                }
                return false;
            }

            function toggleCouponInput() {
                const couponInput = document.getElementById('coupon-input');
                const couponRadio = document.getElementById('coupon');

                // クーポン入力画面の表示と非表示を切り替える
                if (couponInput.style.display === 'none' || couponInput.style.display === '') {
                    couponInput.style.display = 'block';
                } else {
                    couponInput.style.display = 'none';
                    couponRadio.checked = false;
                }
            }
        </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<%@include file="../footer.jsp"%>
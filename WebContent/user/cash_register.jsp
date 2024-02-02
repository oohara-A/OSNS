<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>



<div class="checkout-container">
<<<<<<< HEAD
	<h2>注文情報入力</h2>
	<h1>1.受け取り場所</h1>
	<form action="Purchase.action" class="checkout-form" >
		<div class="form-group">
			<label for="country"> 国:</label> <input type="text" id="country"
				name="country" required placeholder="日本">
		</div>

		<div class="form-group">
			<label for="name"> 氏名:</label> <input type="text" id="name"
				name="name" required placeholder="大原太郎">
		</div>

		<div class="form-group">
			<label for="phone"> 電話番号:</label> <input type="text" id="phone"
				name="phone" required placeholder="093-551-0820">
		</div>

		<div class="form-group">
			<label for="post"> 郵便番号:</label> <input type="text" id="post"
				name="post" required placeholder="802-0002">
		</div>

		<div class="form-group">
			<label for="prefecture"> 都道府県:</label> <input type="text"
				id="prefecture" name="prefecture" required placeholder="福岡県">
		</div>

		<div class="form-group">
			<label for="municipalities"> 市区町村:</label> <input type="text"
				id="municipalities" name="municipalities" required
				placeholder="北九州市小倉北区京町">
		</div>

		<div class="form-group">
			<label for="street">丁目・番地・号:</label> <input type="text" id="street"
				name="street" required placeholder="3-9-20">
		</div>

		<div class="form-group">
			<label for="building">建物名／会社名:</label> <input type="text"
				id="building" name="building" required placeholder="大原学園">
		</div>

		<div class="form-group">
			<label for="room"> 部屋番号:</label> <input type="text" id="room"
				name="room" required placeholder="602">
		</div>

		<div>
			<input type="radio" id="new_address" name="address"> <label
				for="new_address">入力した住所を使用する</label>
		</div>

		<div>
			<input type="radio" id="address" name="address"> <label
				for="address">登録済住所を使用する</label>
		</div>

		<div>
			<input type="checkbox" id="check"> <label for="check">デフォルトの住所を今回の注文と同じにする</label>
		</div>

		<h1>2.支払方法</h1>

		<div>
			<input type="radio" id="coupon" name="coupon"
				onclick="toggleCouponInput()"> <label for="coupon">クーポンを使用する</label>
		</div>

		<!-- クーポンコード入力画面 -->
		<div id="coupon-input" style="display: none;">
			<h4>クーポンコード入力</h4>
			<div class="form-group">
				<label for="coupon-code">クーポンコード:</label> <input type="text"
					id="coupon-code" name="coupon-code" placeholder="クーポンコードを入力">
			</div>

			<button type="button" onclick="toggleCouponInput()">キャンセル</button>

		</div>
		<button type="submit" >購入確定</button>
	</form>
</div>
=======

	<h2>注文情報入力</h2>

	<h1>1.受け取り場所</h1>
	<form class="checkout-form" onsubmit="return validateForm()">
		<div class="form-group">
			<label for="country"> 国:</label> <input type="text" id="country"
				name="country" required placeholder="日本">
		</div>

		<div class="form-group">
			<label for="name"> 氏名:</label> <input type="text" id="name"
				name="name" required placeholder="大原太郎">
		</div>

		<div class="form-group">
			<label for="phone"> 電話番号:</label> <input type="text" id="phone"
				name="phone" required placeholder="093-551-0820">
		</div>

		<div class="form-group">
			<label for="post"> 郵便番号:</label> <input type="text" id="post"
				name="post" required placeholder="802-0002">
		</div>

		<div class="form-group">
			<label for="prefecture"> 都道府県:</label> <input type="text"
				id="prefecture" name="prefecture" required placeholder="福岡県">
		</div>

		<div class="form-group">
			<label for="municipalities"> 市区町村:</label> <input type="text"
				id="municipalities" name="municipalities" required
				placeholder="北九州市小倉北区京町">
		</div>

		<div class="form-group">
			<label for="street">丁目・番地・号:</label> <input type="text" id="street"
				name="street" required placeholder="3-9-20">
		</div>

		<div class="form-group">
			<label for="building">建物名／会社名:</label> <input type="text"
				id="building" name="building" required placeholder="大原学園">
		</div>

		<div class="form-group">
			<label for="room"> 部屋番号:</label> <input type="text" id="room"
				name="room" required placeholder="602">
		</div>

		<div>
			<input type="radio" id="new_address" name="address"> <label
				for="new_address">入力した住所を使用する</label>
		</div>

		<div>
			<input type="radio" id="address" name="address"> <label
				for="address">登録済住所を使用する</label>
		</div>

		<div>
			<input type="checkbox" id="check"> <label for="check">デフォルトの住所を今回の注文と同じにする</label>
		</div>

		<h1>2.支払方法</h1>

		<div>
			<input type="radio" id="coupon" name="coupon"
				onclick="toggleCouponInput()"> <label for="coupon">クーポンを使用する</label>
		</div>

		<!-- クーポンコード入力画面 -->
		<div id="coupon-input" style="display: none;">
			<h4>クーポンコード入力</h4>

			<div class="form-group">
				<label for="coupon-code">クーポンコード:</label> <input type="text"
					id="coupon-code" name="coupon-code" placeholder="クーポンコードを入力">
			</div>

			<button type="button" onclick="toggleCouponInput()">キャンセル</button>

		</div>




		<div>
			<input type="radio" id="pre-paid" name="pay"> <label
				for="pre-paid">プリペイド</label>
		</div>

		<div>
			<input type="radio" id="credit" name="pay"> <label
				for="credit">クレジットカード</label>
		</div>

		<div>
			<input type="radio" id="cash_deli" name="pay"> <label
				for="cash_deli">代金引換</label>
		</div>

		<div>
			<input type="radio" id="other" name="pay"> <label for="other">コンビニ・ATM・電子マネー</label>
		</div>
	</form>

	<h1>3.商品と発送情報</h1>

	<div class="checkout-summary">
		<h2>お届け予定日:XXXX年XX月XX日～XXXX年XX月XX日</h2>
		<%@include file="cart_main.jsp"%>
	</div>

	<form class="checkout-form" onsubmit="return validateForm()">
		<input type="submit" value="購入する">
	</form>
</div>

>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337
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
<%@include file="../footer.jsp"%>
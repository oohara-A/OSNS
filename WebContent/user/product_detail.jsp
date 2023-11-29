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

			<hr>

			<h3>商品レビュー</h3>

			<!-- レビューとチャットの表示 -->
			<div class="reviews" id="reviews">
				<!-- レビューと返信表示エリア -->
			</div>

			<!-- レビュー＆チャット投稿フォーム -->
			<form id="reviewChatForm" onsubmit="submitReviewChat(); return false;">
				<h4>レビューを投稿＆チャット</h4>
				<textarea id="reviewChatContent" rows="4" cols="50" placeholder="あなたのレビューまたはチャットメッセージを入力してください"
					required></textarea>
				<br>
				<input type="submit" value="投稿">
			</form>
		</div>

		<script>
			var reviews = []; // レビューの管理用オブジェクト

			// レビュー＆チャット投稿
			function submitReviewChat() {
				var reviewChatContent = document.getElementById('reviewChatContent').value;

				// レビューとチャットを管理オブジェクトに追加
				var reviewId = 'review' + (reviews.length + 1);
				reviews.push({ id: reviewId, content: reviewChatContent, replies: [] });

				// レビュー＆チャット表示エリアに新しいレビューまたはチャットメッセージを追加
				var reviewsDiv = document.getElementById('reviews');
				var newReviewChat = document.createElement('div');
				newReviewChat.className = 'review';
				newReviewChat.id = reviewId;
				newReviewChat.innerHTML = '<p>ユーザー: ' + reviewChatContent +
					' <span class="edit-link" onclick="editReviewChat(\'' + reviewId + '\')">編集</span>' +
					' <span class="report-link" onclick="reportReviewChat(\'' + reviewId + '\')">通報</span></p>' +
					'<div class="replies" id="replies-' + reviewId + '"></div>' +
					'<form onsubmit="submitReply(\'' + reviewId + '\'); return false;">' +
					'<input type="text" placeholder="返信を入力" id="replyContent-' + reviewId + '" required>' +
					'<input type="submit" value="返信">' +
					'</form>';
				reviewsDiv.appendChild(newReviewChat);

				// レビュー＆チャット投稿後にフォームをクリア
				document.getElementById('reviewChatContent').value = '';
			}

			// レビュー＆チャットの編集
			function editReviewChat(reviewId) {
				var existingReviewChat = reviews.find(function (review) {
					return review.id === reviewId;
				});

				var editedReviewChat = prompt('編集', existingReviewChat.content);

				if (editedReviewChat !== null) {
					// レビューまたはチャットメッセージを更新
					existingReviewChat.content = editedReviewChat;

					// レビュー＆チャット表示エリアを更新
					var reviewChatElement = document.getElementById(reviewId);
					reviewChatElement.querySelector('p').innerHTML = 'ユーザー: ' + editedReviewChat +
						' <span class="edit-link" onclick="editReviewChat(\'' + reviewId + '\')">編集</span>' +
						' <span class="report-link" onclick="reportReviewChat(\'' + reviewId + '\')">通報</span>';
				}
			}

			// レビュー＆チャットの通報
			function reportReviewChat(reviewId) {
				var reason = prompt('通報理由');
				if (reason !== null && reason.trim() !== '') {
					// 通報処理を実行
					alert('通報が送信されました。理由: ' + reason);
				}
			}

			// レビューに対する返信投稿
			function submitReply(reviewId) {
				var replyContent = document.getElementById('replyContent-' + reviewId).value;

				// 対象のレビューに返信を追加
				var targetReview = reviews.find(function (review) {
					return review.id === reviewId;
				});

				targetReview.replies.push({ user: 'ユーザー', content: replyContent });

				// 対象のレビューの返信表示エリアを更新
				var repliesDiv = document.getElementById('replies-' + reviewId);
				var newReply = document.createElement('div');
				newReply.className = 'reply';
				newReply.innerHTML = '<p>ユーザー: ' + replyContent +
					' <span class="edit-link" onclick="editReply(\'' + reviewId + '\', ' + (targetReview.replies.length - 1) + ')">編集</span>' +
					' <span class="report-link" onclick="reportReply(\'' + reviewId + '\', ' + (targetReview.replies.length - 1) + ')">通報</span></p>';
				repliesDiv.appendChild(newReply);

				// 返信投稿後にフォームをクリア
				document.getElementById('replyContent-' + reviewId).value = '';
			}

			// 返信の編集
			function editReply(reviewId, replyIndex) {
				var targetReview = reviews.find(function (review) {
					return review.id === reviewId;
				});

				var existingReply = targetReview.replies[replyIndex].content;
				var editedReply = prompt('編集', existingReply);

				if (editedReply !== null) {
					// 返信を更新
					targetReview.replies[replyIndex].content = editedReply;

					// 対象のレビューの返信表示エリアを更新
					var repliesDiv = document.getElementById('replies-' + reviewId);
					repliesDiv.children[replyIndex].querySelector('p').innerHTML = 'ユーザー: ' + editedReply +
						' <span class="edit-link" onclick="editReply(\'' + reviewId + '\', ' + replyIndex + ')">編集</span>' +
						' <span class="report-link" onclick="reportReply(\'' + reviewId + '\', ' + replyIndex + ')">通報</span>';
				}
			}

			// 返信の通報
			function reportReply(reviewId, replyIndex) {
				var reason = prompt('通報理由');
				if (reason !== null && reason.trim() !== '') {
					// 通報処理を実行
					alert('通報が送信されました。理由: ' + reason);
				}
			}
		</script>

		<%@include file="../footer.jsp" %>
<%@page import="bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
/* レビューフォームのスタイル */
.review-form {
	margin-top: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
}

/* レビューのスタイル */
.product-review, .reply {
	margin-top: 10px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

/* レビュー返信フォームのスタイル */
.reply-form {
	margin-top: 10px;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #f9f9f9;
}

/* レビュー表示のcss */
.box2 {
	/*  display: flex; */
	 padding-right10
    position: relative;
   padding: 1rem 1rem 1.2rem;
   	padding-right:2rem;
 	border-bottom: 2px solid #333;
    background: linear-gradient(#DFF3CA 0 calc(100% - 0.2rem), white calc(100% - 0.2rem));
    font-size: 20px;
    margin-right:190px;
	}

.box2:before,
.box2:after {
    position: absolute;
    left: 50%;
    content: "";
    height: 0;
    width: 0;
}

.box2:before {
    top: 100%;
    border: 9px solid;
    border-color: transparent;
    border-top-color: #333;
    margin-left: -9px;
}

.box2:after {
    top: 99%;
    border: 8px solid;
    border-color: transparent;
    border-top-color: white;
    margin-left: -8px;
}

.box2.p{
    color: #333;
    line-height: 1.5;
}
.border-radius {
  width: 60px;
  height: 60px;
  line-height: 60px;
  background-color: green;
  border-radius: 50%;
  color: #fff;
  text-align: center;
  margin-right: 10px; /* 余白を調整するために必要に応じてマージンを追加 */
  }
.review{
display:flex;
align-items: center;
}
.ptagu{
	padding-right: 10px;
}
a{
	color:inherit;
	text-decoration:none;
	color: black;
}
</style>

<hr>

	<h3>商品レビュー</h3>
	<!-- レビューとリプライの表示 -->

	<div class="box2">
<c:choose>
    <c:when test="${user_review != null}">
        <c:forEach var="review" items="${user_review}">
                    <div class="review">
                        <div class="border-radius">コメ</div>
                        <p class="ptagu">${review.reviewbody}</p>
                        <a href="message.jsp?id = ${user_id }">返信</a>
                         <a href="#">編集</a>
                         <a href="Reviewdel.action?review_id=${review.review_id }">削除</a>
                    </div>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <h1>コメントなし</h1>
    </c:otherwise>
</c:choose>
<!-- レビュー＆リプライ投稿フォーム -->
		<div>
			<form action="Postedreview.action" id="productReviewForm"
				onsubmit="submitProductReview(); return false;" class="review-form">
				<h4>商品レビューを投稿</h4>
				<textarea name="reviews" id="productReviewContent" rows="4" cols="50"
					placeholder="あなたの商品レビューを入力してください" required></textarea>
				<br> <label for="rating">評価:</label> <select name="ratings" id="rating" required>
					<option value=1>☆</option>
					<option value=2>☆☆</option>
					<option value=3>☆☆☆</option>
					<option value=4>☆☆☆☆</option>
					<option value=5>☆☆☆☆☆</option>
				</select> <br> <input type="submit" value="投稿">
			</form>
			</div>
	</div>

<script>
        var productReviews = []; // 商品レビューとチャットの管理用オブジェクト

        // レビュー＆リプライ投稿
        function submitProductReview() {
            var productReviewContent = document.getElementById('productReviewContent').value;
            var rating = document.getElementById('rating').value;

            // レビューとリプライを管理オブジェクトに追加
            var reviewId = 'review' + (productReviews.length + 1);
            productReviews.push({ id: reviewId, content: productReviewContent, rating: rating, replies: [] });

            // レビュー＆リプライ表示エリアに新しいレビューまたはリプライを追加
            var productReviewsDiv = document.getElementById('productReviews');
            var newProductReview = document.createElement('div');
            newProductReview.className = 'product-review';
            newProductReview.id = reviewId;
            newProductReview.innerHTML = '<p>ユーザー: ' + productReviewContent +
                ' <span class="rating" onclick="changeRating(\'' + reviewId + '\', true)">評価: ' + getStars(rating) + '</span>' +
                ' <span class="reply-link" onclick="showReplyForm(\'' + reviewId + '\')">返信</span>' +
                ' <span class="edit-link" onclick="editProductReview(\'' + reviewId + '\')">編集</span>' +
                ' <span class="delete-link" onclick="deleteProductReview(\'' + reviewId + '\')">削除</span>' +
                ' <span class="report-link" onclick="reportProductReview(\'' + reviewId + '\')">通報</span></p>' +
                '<div class="replies" id="replies-' + reviewId + '"></div>';
            productReviewsDiv.appendChild(newProductReview);

            // レビュー＆リプライ投稿後にフォームをクリア
            document.getElementById('productReviewContent').value = '';
            document.getElementById('rating').value = '1';
        }

        // リプライのクリックでの遷移
        function showReplyForm(reviewId) {
            // リプライをクリックしたときに新しいウィンドウでmessage.jspを開く
            window.open('message.jsp', '_blank');
        }


        // ユーザーが評価を変更するための関数
        function changeRating(reviewId, isStarClick) {
            if (isStarClick) {
                var existingReview = productReviews.find(function (review) {
                    return review.id === reviewId;
                });

                var newRating = prompt('新しい評価を入力してください (1-5)', existingReview.rating);
                if (newRating !== null) {
                    newRating = parseInt(newRating);
                    if (newRating >= 1 && newRating <= 5) {
                        existingReview.rating = newRating;

                        // レビュー＆リプライ表示エリアを更新
                        var reviewElement = document.getElementById(reviewId);
                        reviewElement.querySelector('.rating').innerHTML = '評価: ' + getStars(newRating);
                    } else {
                        alert('評価は1から5の範囲で入力してください。');
                    }
                }
            }
        }

        // レビューの編集
        function editProductReview(reviewId) {
            var existingProductReview = productReviews.find(function (review) {
                return review.id === reviewId;
            });

            var editedProductReview = prompt('編集', existingProductReview.content);

            if (editedProductReview !== null) {
                // レビューまたはリプライを更新
                existingProductReview.content = editedProductReview;

                // レビュー＆リプライ表示エリアを更新
                var productReviewElement = document.getElementById(reviewId);
                productReviewElement.querySelector('p').innerHTML = 'ユーザー: ' + editedProductReview +
                    ' <span class="rating" onclick="changeRating(\'' + reviewId + '\', true)">評価: ' + getStars(existingProductReview.rating) + '</span>' +
                    ' <span class="reply-link" onclick="showReplyForm(\'' + reviewId + '\')">返信</span>' +
                    ' <span class="edit-link" onclick="editProductReview(\'' + reviewId + '\')">編集</span>' +
                    ' <span class="delete-link" onclick="deleteProductReview(\'' + reviewId + '\')">削除</span>' +
                    ' <span class="report-link" onclick="reportProductReview(\'' + reviewId + '\')">通報</span>';
            }
        }

        // レビューの削除
        function deleteProductReview(reviewId) {
            var confirmation = confirm('このレビューを削除してもよろしいですか？');

            if (confirmation) {
                // 対象のレビューを削除
                var reviewIndex = productReviews.findIndex(function (review) {
                    return review.id === reviewId;
                });

                if (reviewIndex !== -1) {
                    productReviews.splice(reviewIndex, 1);

                    // レビュー＆リプライ表示エリアを更新
                    var reviewElement = document.getElementById(reviewId);
                    reviewElement.parentNode.removeChild(reviewElement);
                }
            }
        }

        // レビューの通報
        function reportProductReview(reviewId) {
            var reason = prompt('通報理由');
            if (reason !== null && reason.trim() !== '') {
                // 通報処理を実行
                alert('商品レビューが通報されました。理由: ' + reason);
            }
        }

        // リプライに対する編集
        function editReplyToReview(reviewId, replyIndex) {
            var targetReview = productReviews.find(function (review) {
                return review.id === reviewId;
            });

            var existingReply = targetReview.replies[replyIndex].content;
            var editedReply = prompt('編集', existingReply);

            if (editedReply !== null) {
                // リプライを更新
                targetReview.replies[replyIndex].content = editedReply;

                // 対象のレビューのリプライ表示エリアを更新
                var repliesDiv = document.getElementById('replies-' + reviewId);
                repliesDiv.children[replyIndex].querySelector('p').innerHTML = 'ユーザー: ' + editedReply +
                    ' <span class="edit-link" onclick="editReplyToReview(\'' + reviewId + '\', ' + replyIndex + ')">編集</span>' +
                    ' <span class="delete-link" onclick="deleteReplyToReview(\'' + reviewId + '\', ' + replyIndex + ')">削除</span>' +
                    ' <span class="report-link" onclick="reportReplyToReview(\'' + reviewId + '\', ' + replyIndex + ')">通報</span>';
            }
        }

        // リプライの通報
        function reportReplyToReview(reviewId, replyIndex) {
            var reason = prompt('通報理由');
            if (reason !== null && reason.trim() !== '') {
                // 通報処理を実行
                alert('リプライが通報されました。理由: ' + reason);
            }
        }

        // リプライフォームの表示切り替え
        function toggleReplyForm(reviewId) {
            var form = document.querySelector('#productReviews #' + reviewId + ' form');
            form.style.display = form.style.display === 'none' ? 'block' : 'none';
        }

        // 評価を星印で表現
        function getStars(rating) {
            return '★'.repeat(rating) + '☆'.repeat(5 - rating);
        }
    </script>
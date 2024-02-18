<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../header.jsp"%>
<%
	List<Product> pro = new ArrayList<>();
	pro = (List<Product> ) session.getAttribute("product_detail");
	String pro_name = "";
	for(Product p : pro){
		pro_name = p.getProduct_name();
		break;
	}
%>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	margin: 20px;
}

.buyer-info {
	width: 200px;
	background-color: #fff;
	padding: 10px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-left: 19%;
}

.buyer-info img {
	width: 100%;
	border-radius: 50%;
	margin-bottom: 10px;
	cursor: pointer;
}

.buyer-info p {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

.buyer-info .review-item {
	margin-bottom: 15px;
	cursor: pointer;
	border: 1px solid #ddd;
	padding: 10px;
	border-radius: 8px;
	transition: background-color 0.3s;
}

.buyer-info .review-item:hover {
	background-color: #f9f9f9;
}

.review-chat {
	flex: 1;
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-left: 10%;
}

.review-chat h2 {
	font-size: 24px;
	margin-bottom: 20px;
}

.review {
	margin-bottom: 20px;
	border: 1px solid #ddd;
	padding: 10px;
	border-radius: 8px;
}

.review p {
	font-size: 16px;
	margin-bottom: 10px;
}

.reply {
	border: 1px solid #ddd;
	padding: 10px;
	border-radius: 8px;
	margin-bottom: 10px;
}

.reply p {
	font-size: 14px;
	margin-bottom: 5px;
}

.review-form {
	width: 100%;
	display: flex;
	margin-top: 20px;
}

.review-form input[type="text"], .review-form input[type="submit"] {
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ddd;
	border-radius: 4px;
	margin-right: 10px;
}

.review-form input[type="submit"] {
	background-color: #4caf50;
	color: #fff;
	cursor: pointer;
	border: none;
}
</style>

<script>
            function changeReview(userName, content, rating) {
                var reviewElement = document.getElementById('current-review');
                reviewElement.innerHTML = '<div class="review"><input type="hidden" name="user_id" value="'+userName+'"><p>' +'購入者ID'+ userName + ': ' + content + '：' + rating +
                    ' <span class="report-link" onclick="reportReview()">通報</span>'
                // 返信をクリア
                var replyElement = document.getElementById('current-reply');
                replyElement.innerHTML = '';

            }

            function showReply(userName, replyContent) {
                var replyElement = document.getElementById('current-reply');
                var newReply = '<div class="reply"><p>' + userName + ': ' + replyContent +
                    ' <span class="report-link" onclick="reportReply()">通報</span>' +
                    ' <span class="edit-link" onclick="editReply()">編集</span>' +
                    ' <span class="delete-link" onclick="deleteReply()">削除</span></p></div>';
                // 返信を新しく追加
                replyElement.innerHTML += newReply;
            }

            function replyToReview() {
                var replyContent = document.getElementById('replyContent').value;
                // 返信を表示
                showReply('あなた', replyContent);
                // 返信フォームをクリア
                document.getElementById('replyContent').value = '';
            }

            function reportReview() {
                var reason = prompt('通報理由');
                if (reason !== null && reason.trim() !== '') {
                    // 通報処理を実行
                    alert('レビューが通報されました。理由: ' + reason);
                    // 通報されたことを表示するなどの追加の処理があればここに追加
                }
            }

            function reportReply() {
                var reason = prompt('通報理由');
                if (reason !== null && reason.trim() !== '') {
                    // 通報処理を実行
                    alert('返信が通報されました。理由: ' + reason);
                    // 通報されたことを表示するなどの追加の処理があればここに追加
                }
            }

            function editReview() {
                var reviewContent = prompt('編集', 'ここに現在のレビューの内容を表示');
                if (reviewContent !== null) {
                    // レビューを更新
                    var reviewElement = document.getElementById('current-review');
                    reviewElement.querySelector('p').innerText = reviewContent;
                }
            }

            function editReply() {
                var replyContent = prompt('編集', 'ここに現在の返信の内容を表示');
                if (replyContent !== null) {
                    // 返信を更新
                    var replyElement = document.getElementById('current-reply');
                    replyElement.querySelector('p').innerText = replyContent;
                }
            }

            function deleteReview() {
                var confirmation = confirm('このレビューを削除してもよろしいですか？');
                if (confirmation) {
                    // レビューを削除
                    var reviewElement = document.getElementById('current-review');
                    reviewElement.innerHTML = '';
                }
            }

            function deleteReply() {
                var confirmation = confirm('この返信を削除してもよろしいですか？');
                if (confirmation) {
                    // 返信を削除
                    var replyElement = document.getElementById('current-reply');
                    replyElement.innerHTML = '';
                }
            }
            function change() {
            	var element;
            	if (document.getElementById("review-item")) {
            		element = document.getElementById("submit");
                    element.disabled = false;
            	}else{
            		element = document.getElementById("submit");
                    element.disabled = true;
            	}
            }
        </script>



<hr>
<div class="container">
	<div class="buyer-info">
		<img alt="ユーザーアイコン" src="#">
		<p>購入者レビュー</p>
	<div class="review_come">
		<c:forEach var="review" items="${user_review}">
                    <div id="review-item" class="review-item" onclick="changeReview('${review.user_id }','${review.reviewbody}' , '★★★★★'),change()">
                        <div class="border-radius">コメント</div>
                        <p class="ptagu">${review.reviewbody}</p>
                    </div>
        </c:forEach>
	</div>

</div>
	<div class="review-chat">
		<h2><%=pro_name %>の商品チャット</h2>
		<p id="warning-text">返信したいコメントを押してください。</p><br>
	<form action="Messgsend.action">
		<div id="current-review"></div>
		<div id="current-reply"></div>
		<div class="review-form">
			<input type="text" id="replyContent" name="reply" placeholder="返信を入力">
			<input id="submit" type="submit" value="返信" disabled>
		</div>
		</form>

	</div>
</div>

<%@ include file="../footer.jsp"%>
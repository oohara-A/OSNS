<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<style>
    /* 投稿フォームのスタイル */
    form {
        margin-top: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    /* ツイートとリプライのスタイル */
    .tweet, .reply {
        margin-top: 10px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background-color: #fff;
    }

    /* 返信フォームのスタイル */
    form.reply-form {
        margin-top: 10px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background-color: #f9f9f9;
    }
</style>

<hr>
<div>
    <h3>商品レビュー＆チャット</h3>

    <!-- ツイートとリプライの表示 -->
    <div class="tweets" id="tweets">
        <!-- ツイートと返信表示エリア -->
    </div>

    <!-- ツイート＆リプライ投稿フォーム -->
    <form id="tweetReplyForm" onsubmit="submitTweetReply(); return false;">
        <h4>商品レビューを投稿＆チャット</h4>
        <textarea id="tweetReplyContent" rows="4" cols="50" placeholder="あなたの商品レビューまたはチャットメッセージを入力してください" required></textarea>
        <br>
        <label for="rating">評価:</label>
        <select id="rating" required>
            <option value="1">☆</option>
            <option value="2">☆☆</option>
            <option value="3">☆☆☆</option>
            <option value="4">☆☆☆☆</option>
            <option value="5">☆☆☆☆☆</option>
        </select>
        <br>
        <input type="submit" value="投稿">
    </form>
</div>

<script>
    var tweets = []; // 商品レビューとチャットの管理用オブジェクト

    // ツイート＆リプライ投稿
    function submitTweetReply() {
        var tweetReplyContent = document.getElementById('tweetReplyContent').value;
        var rating = document.getElementById('rating').value;

        // ツイートとリプライを管理オブジェクトに追加
        var tweetId = 'tweet' + (tweets.length + 1);
        tweets.push({ id: tweetId, content: tweetReplyContent, rating: rating, replies: [] });

        // ツイート＆リプライ表示エリアに新しいツイートまたはリプライを追加
        var tweetsDiv = document.getElementById('tweets');
        var newTweetReply = document.createElement('div');
        newTweetReply.className = 'tweet';
        newTweetReply.id = tweetId;
        newTweetReply.innerHTML = '<p>ユーザー: ' + tweetReplyContent +
            ' <span class="rating">評価: ' + getStars(rating) + '</span>' +
            ' <span class="reply-link" onclick="toggleReplyForm(\'' + tweetId + '\')">リプライ</span>' +
            ' <span class="edit-link" onclick="editTweetReply(\'' + tweetId + '\')">編集</span>' +
            ' <span class="report-link" onclick="reportTweetReply(\'' + tweetId + '\')">通報</span></p>' +
            '<form onsubmit="submitReplyToTweet(\'' + tweetId + '\'); return false;" style="display:none;">' +
            '<input type="text" placeholder="返信を入力" id="replyContent-' + tweetId + '" required>' +
            '<input type="submit" value="返信">' +
            '</form>' +
            '<div class="replies" id="replies-' + tweetId + '"></div>';
        tweetsDiv.appendChild(newTweetReply);

        // ツイート＆リプライ投稿後にフォームをクリア
        document.getElementById('tweetReplyContent').value = '';
        document.getElementById('rating').value = '1';
    }

    // ツイート＆リプライの編集
    function editTweetReply(tweetId) {
        var existingTweetReply = tweets.find(function (tweet) {
            return tweet.id === tweetId;
        });

        var editedTweetReply = prompt('編集', existingTweetReply.content);

        if (editedTweetReply !== null) {
            // ツイートまたはリプライを更新
            existingTweetReply.content = editedTweetReply;

            // ツイート＆リプライ表示エリアを更新
            var tweetReplyElement = document.getElementById(tweetId);
            tweetReplyElement.querySelector('p').innerHTML = 'ユーザー: ' + editedTweetReply +
                ' <span class="rating">評価: ' + getStars(existingTweetReply.rating) + '</span>' +
                ' <span class="reply-link" onclick="toggleReplyForm(\'' + tweetId + '\')">リプライ</span>' +
                ' <span class="edit-link" onclick="editTweetReply(\'' + tweetId + '\')">編集</span>' +
                ' <span class="report-link" onclick="reportTweetReply(\'' + tweetId + '\')">通報</span>';
        }
    }

    // ツイート＆リプライの通報
    function reportTweetReply(tweetId) {
        var reason = prompt('通報理由');
        if (reason !== null && reason.trim() !== '') {
            // 通報処理を実行
            alert('通報が送信されました。理由: ' + reason);
        }
    }

    // ツイートに対するリプライ投稿
    function submitReplyToTweet(tweetId) {
        var replyContent = document.getElementById('replyContent-' + tweetId).value;

        // 対象のツイートにリプライを追加
        var targetTweet = tweets.find(function (tweet) {
            return tweet.id === tweetId;
        });

        targetTweet.replies.push({ user: 'ユーザー', content: replyContent });

        // 対象のツイートのリプライ表示エリアを更新
        var repliesDiv = document.getElementById('replies-' + tweetId);
        var newReply = document.createElement('div');
        newReply.className = 'reply';
        newReply.innerHTML = '<p>ユーザー: ' + replyContent +
            ' <span class="edit-link" onclick="editReplyToTweet(\'' + tweetId + '\', ' + (targetTweet.replies.length - 1) + ')">編集</span>' +
            ' <span class="report-link" onclick="reportReplyToTweet(\'' + tweetId + '\', ' + (targetTweet.replies.length - 1) + ')">通報</span></p>';
        repliesDiv.appendChild(newReply);

        // リプライ投稿後にフォームを非表示にする
        document.getElementById('replyContent-' + tweetId).value = '';
        toggleReplyForm(tweetId);
    }

    // リプライの編集
    function editReplyToTweet(tweetId, replyIndex) {
        var targetTweet = tweets.find(function (tweet) {
            return tweet.id === tweetId;
        });

        var existingReply = targetTweet.replies[replyIndex].content;
        var editedReply = prompt('編集', existingReply);

        if (editedReply !== null) {
            // リプライを更新
            targetTweet.replies[replyIndex].content = editedReply;

            // 対象のツイートのリプライ表示エリアを更新
            var repliesDiv = document.getElementById('replies-' + tweetId);
            repliesDiv.children[replyIndex].querySelector('p').innerHTML = 'ユーザー: ' + editedReply +
                ' <span class="edit-link" onclick="editReplyToTweet(\'' + tweetId + '\', ' + replyIndex + ')">編集</span>' +
                ' <span class="report-link" onclick="reportReplyToTweet(\'' + tweetId + '\', ' + replyIndex + ')">通報</span>';
        }
    }

    // リプライの通報
    function reportReplyToTweet(tweetId, replyIndex) {
        var reason = prompt('通報理由');
        if (reason !== null && reason.trim() !== '') {
            // 通報処理を実行
            alert('通報が送信されました。理由: ' + reason);
        }
    }

    // リプライフォームの表示切り替え
    function toggleReplyForm(tweetId) {
        var form = document.querySelector('#tweets #' + tweetId + ' form');
        form.style.display = form.style.display === 'none' ? 'block' : 'none';
    }

    // 評価を星印で表現
    function getStars(rating) {
        return '★'.repeat(rating) + '☆'.repeat(5 - rating);
    }
</script>

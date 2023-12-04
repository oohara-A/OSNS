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
        .tweet,
        .reply {
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
        <h3>商品レビュー</h3>

        <!-- ツイートとリプライの表示 -->
        <div class="tweets" id="tweets">
            <!-- ツイートと返信表示エリア -->
        </div>

        <!-- ツイート＆リプライ投稿フォーム -->
        <form id="tweetReplyForm" onsubmit="submitTweetReply(); return false;">
            <h4>商品レビューを投稿</h4>
            <textarea id="tweetReplyContent" rows="4" cols="50" placeholder="あなたの商品レビューを入力してください" required></textarea>
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
                ' <span class="rating" onclick="changeRating(\'' + tweetId + '\', true)">評価: ' + getStars(rating) + '</span>' +
                ' <span class="reply-link" onclick="showReplyForm(\'' + tweetId + '\')">リプライ</span>' +
                ' <span class="edit-link" onclick="editTweetReply(\'' + tweetId + '\')">編集</span>' +
                ' <span class="delete-link" onclick="deleteTweetReply(\'' + tweetId + '\')">削除</span>' +
                ' <span class="report-link" onclick="reportTweetReply(\'' + tweetId + '\')">通報</span></p>' +
                '<div class="replies" id="replies-' + tweetId + '"></div>';
            tweetsDiv.appendChild(newTweetReply);

            // ツイート＆リプライ投稿後にフォームをクリア
            document.getElementById('tweetReplyContent').value = '';
            document.getElementById('rating').value = '1';
        }

        // リプライのクリックでの遷移
        function showReplyForm(tweetId) {
            // リプライをクリックしたときの遷移処理を追加
            window.location.href = 'message.jsp' + tweetId;
        }

        // ユーザーが評価を変更するための関数
        function changeRating(tweetId, isStarClick) {
            if (isStarClick) {
                var existingTweet = tweets.find(function (tweet) {
                    return tweet.id === tweetId;
                });

                var newRating = prompt('新しい評価を入力してください (1-5)', existingTweet.rating);
                if (newRating !== null) {
                    newRating = parseInt(newRating);
                    if (newRating >= 1 && newRating <= 5) {
                        existingTweet.rating = newRating;

                        // ツイート＆リプライ表示エリアを更新
                        var tweetElement = document.getElementById(tweetId);
                        tweetElement.querySelector('.rating').innerHTML = '評価: ' + getStars(newRating);
                    } else {
                        alert('評価は1から5の範囲で入力してください。');
                    }
                }
            }
        }

        // ツイートの編集
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
                    ' <span class="rating" onclick="changeRating(\'' + tweetId + '\', true)">評価: ' + getStars(existingTweetReply.rating) + '</span>' +
                    ' <span class="reply-link" onclick="showReplyForm(\'' + tweetId + '\')">リプライ</span>' +
                    ' <span class="edit-link" onclick="editTweetReply(\'' + tweetId + '\')">編集</span>' +
                    ' <span class="delete-link" onclick="deleteTweetReply(\'' + tweetId + '\')">削除</span>' +
                    ' <span class="report-link" onclick="reportTweetReply(\'' + tweetId + '\')">通報</span>';
            }
        }

        // リプライに対する編集
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
                    ' <span class="delete-link" onclick="deleteReplyToTweet(\'' + tweetId + '\', ' + replyIndex + ')">削除</span>' +
                    ' <span class="report-link" onclick="reportReplyToTweet(\'' + tweetId + '\', ' + replyIndex + ')">通報</span>';
            }
        }

        // ツイートまたはリプライの削除
        function deleteTweetReply(tweetId) {
            var confirmation = confirm('この投稿を削除してもよろしいですか？');

            if (confirmation) {
                // 対象のツイートまたはリプライを削除
                var tweetIndex = tweets.findIndex(function (tweet) {
                    return tweet.id === tweetId;
                });

                if (tweetIndex !== -1) {
                    tweets.splice(tweetIndex, 1);

                    // ツイート＆リプライ表示エリアを更新
                    var tweetElement = document.getElementById(tweetId);
                    tweetElement.parentNode.removeChild(tweetElement);
                }
            }
        }

        // リプライの削除
        function deleteReplyToTweet(tweetId, replyIndex) {
            var confirmation = confirm('このリプライを削除してもよろしいですか？');

            if (confirmation) {
                // 対象のツイートのリプライを削除
                var targetTweet = tweets.find(function (tweet) {
                    return tweet.id === tweetId;
                });

                if (targetTweet && targetTweet.replies.length > replyIndex) {
                    targetTweet.replies.splice(replyIndex, 1);

                    // 対象のツイートのリプライ表示エリアを更新
                    var repliesDiv = document.getElementById('replies-' + tweetId);
                    repliesDiv.removeChild(repliesDiv.children[replyIndex]);
                }
            }
        }

        // ツイートの通報
        function reportTweetReply(tweetId) {
            var reason = prompt('通報理由');

            if (reason !== null && reason.trim() !== '') {
                // 通報処理を実行
                var targetTweet = tweets.find(function (tweet) {
                    return tweet.id === tweetId;
                });

                if (targetTweet) {
                    // 通報の処理を追加
                    alert('商品レビューが通報されました。理由: ' + reason);
                }
            }
        }
        このコー

        // リプライの通報
        function reportReplyToTweet(tweetId, replyIndex) {
            var reason = prompt('通報理由');

            if (reason !== null && reason.trim() !== '') {
                // 通報処理を実行
                var targetTweet = tweets.find(function (tweet) {
                    return tweet.id === tweetId;
                });

                if (targetTweet && targetTweet.replies.length > replyIndex) {
                    // 通報の処理を追加
                    alert('リプライが通報されました。理由: ' + reason);
                }
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
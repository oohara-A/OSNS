<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../menu.jsp"%>
<style>
    th, td {
        width: 20%;
        text-align: left;
        padding: 8px;
    }

    .cart-container {
        padding-top: 70px;
        width: 70%;
        max-width: 1000px;
        margin: 60px auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }

    .cart_table {
        width: 100%;
        table-layout: fixed;
    }

    .deletion {
        text-align: right;
    }

    .deletion button {
        padding: 5px 10px;
        background-color: #ff0000;
        color: #ffffff;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

</style>
<c:choose>
    <c:when test="${send_email!=null }">
        <div class="cart-container">
            <h2>送信済みメッセージ一覧</h2>
            <table class="cart_table">
                <thead>
                    <tr>
                        <th>送信先ID</th>
                        <th>件名</th>
                        <th>内容</th>
                        <th>状態</th>
                        <th class="sending_time">送信日時</th>
                        <th class="deletion">操作</th>
                    </tr>
                </thead>
                <c:forEach var="email" items="${send_email}">
                    <tbody>
                        <tr>
                            <td>${email.recipient}</td>
                            <td>${email.subject}</td>
                            <td>${email.body}</td>
                            <td>${email.status}</td>
                            <td>${email.sending_time}</td>
                            <td class="deletion">
                                <button onclick="window.location.href='Messagdel.action?id=${email.email_id}'">削除</button>
                            </td>
                        </tr>
                        <!-- Repeat this block for each item in the cart -->
                    </tbody>
                </c:forEach>
            </table>
        </div>
    </c:when>
    <c:otherwise>
        <div class="cart-container">
            <h2>送信したメッセージ一覧</h2>
            <p>メッセージ関係は一件もありません。</p>
        </div>
    </c:otherwise>
</c:choose>
<hr>
<c:choose>
    <c:when test="${recipient_mail !=null }">
        <div class="cart-container">
            <h2>受信メッセージ一覧</h2>
            <table class="cart_table">
                <thead>
                    <tr>
                        <th>送信元ID</th>
                        <th>件名</th>
                        <th>内容</th>
                        <th>状態</th>
                        <th>送信日時</th>
                    </tr>
                </thead>
                <c:forEach var="recipent_email" items="${recipient_mail}">
                    <tbody>
                        <tr>
                            <td>${recipent_email.sender}</td>
                            <td>${recipent_email.subject}</td>
                            <td>${recipent_email.body}</td>
                            <td>受信完了</td>
                            <td>${recipent_email.sending_time}</td>
                        </tr>
                        <!-- Repeat this block for each item in the cart -->
                    </tbody>
                </c:forEach>
            </table>
        </div>
    </c:when>
    <c:otherwise>
        <div class="cart-container">
            <h2>受信メッセージ一覧</h2>
            <p>受信したメッセージ関係は一件もありません。</p>
        </div>
    </c:otherwise>
</c:choose>
<%@include file="../footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../menu.jsp"%>

<style>
td{
	color: white;
}
.cart-container{
	padding-top: 70px;
}
</style>
<c:choose>
<c:when test="${send_email!=null }">
	<div class="cart-container">
		<h2>送信済みメッセージ一覧</h2>
		<%-- <%@include file="cart_main.jsp"%> --%>
	<table class="cart_table">
		<thead>
			<tr>
				<th>送信先ID</th>
				<th>件名</th>
				<th>内容</th>
				<th>状態</th>
				<th>送信日時</th>
			</tr>
		</thead>
	<c:forEach var="email" items="${send_email}">
		<tbody>
			<tr>
				<td>
					送信先ID:${email.recipient}
				</td>
				<td >
					${email.subject}
				</td>
				<td>
					${email.body}
				</td>
				<td>
					${email.status}
				</td>
				<td>
					${email.sending_time}
				</td>
				<td>
					<a href="Messagdel.action?id=${email.email_id}">削除</a>
				</td>
			</tr>
			<!-- Repeat this block for each item in the cart -->
		</tbody>
	</c:forEach >
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
	<table  class="cart_table">
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
				<td>
					送信元ID:${recipent_email.sender }
				</td>
				<td >
					${recipent_email.subject }
				</td>
				<td>
					${recipent_email.body }
				</td>
				<td>
					受信完了
				</td>
				<td>
					${recipent_email.sending_time }
				</td>
			</tr>
			<!-- Repeat this block for each item in the cart -->
		</tbody>
	</c:forEach >
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
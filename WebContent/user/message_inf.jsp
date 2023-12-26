<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu.jsp"%>

<c:choose>
<c:when test="${send_email!=null }">
	<div class="cart-container">
		<h2>送信済みメッセージ一覧</h2>
		<%-- <%@include file="cart_main.jsp"%> --%>

		<table class="cart_table">
	<thead>
		<tr>
			<th>受信者ID</th>
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
					受信者ID:${email.recipient}
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


<%@include file="../footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../menu.jsp"%>
<c:choose>
	<c:when test="${user!=null}">
		<form action="Userlogout.action">
			<div class="inq_sending">
				<input class="sending" type="submit" value="ログアウト">
			</div>
		</form>
	</c:when>
	<c:otherwise>
		<div class="inq_sending">
			<form action="Login.action" method="post">
				<h2 class="com_title">ログイン</h2>
				<div class="log">
					<p class="login">ユーザー名</p>
					<input type="text" name="inq_name" required="required">
				</div>
				<div class="log">
					<p class="login">パスワード</p>
					<input type="text" name="inq_com_name" required="required">
				</div>

				<div class="logged">
					<input type="checkbox" name="logged">
					<p class="logged_in">ログインしたままにする</p>
				</div>
				<div class="inq_sending">
					<input class="sending" type="submit" value="ログイン">
				</div>
			</form>
		</div>
	</c:otherwise>
</c:choose>
<div class="com_login">
	<a href="../company/com_login.jsp">企業の方はこちら</a>
</div>

<div class="admin_log">
	<a href="../admin/admin_login.jsp">管理者の方はこちら</a>
</div>
<p class="new_acount">新規登録の方はこちらをクリック↓</p>
<div class="inq_sending">
	<a href="sign_up.jsp"><input class="sending" type="submit"
		value="アカウントを作成する"></a>
</div>


<%@include file="../footer.jsp"%>

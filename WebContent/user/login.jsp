<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="Login.action" method="post">

    <h2 class="com_title">ログイン</h2>

		<div class="log">
	      <p class="login">ユーザー名</p>
	      <input type="text" name="inq_name" required>
	    </div>

		<div class="log">
	      <p class="login">パスワード</p>
	      <input type="text" name="inq_com_name" required>
	    </div>


		<div class="inq_sending">
  			<input class="sending" type="submit" value="ログイン">
		</div>

		<div class="com_login">
        	<a href="/logout">企業の方はこちら</a>
    	</div>

    	<div class="admin_log">
        	<a href="/logout">管理者の方はこちら</a>
    	</div>


<p>新規登録の方はこちら</p>

</form>

<%@include file="../footer.jsp" %>
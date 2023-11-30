<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="registered.jsp" method="post">

    <h2 class="com_title">ログイン</h2>

		<div class="log">
	      <p class="login">ユーザー名</p>
	      <input type="text" name="inq_name">
	    </div>

		<div class="log">
	      <p class="login">パスワード</p>
	      <input type="text" name="inq_com_name">
	    </div>

	    <div class="logged">
	    	<input type="checkbox" name="logged">
	    	<p class="logged_in">ログインしたままにする</p>
		</div>


		<div class="inq_sending">
  			<input class="sending" type="submit" value="ログイン">
		</div>

		<div class="com_login">
        	<a href="company/login.jsp">企業の方はこちら</a>
    	</div>

    	<div class="admin_log">
        	<a href="/company/login.jsp">管理者の方はこちら</a>
    	</div>

<p class="new_acount">新規登録の方はこちらをクリック↓</p>


		<div class="inq_sending">
  			<input class="sending" type="submit" value="アカウントを作成する">
		</div>

</form>

<%@include file="../footer.jsp" %>
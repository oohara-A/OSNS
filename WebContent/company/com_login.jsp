<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../com_admin_header.jsp"%>
<style>
.login_title{
	color: white;
}
.new_acount{
color: white;
}
.vh-100{
	height: 800px;
	}
</style>
<form action="Login_company.action" method="post" class="login-container" >
<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">

    <h2 class="login_title">Company Login Page</h2>
    <div class="login" >
        <div class="login-triangle"></div>

        <p><input type="email" placeholder="Email" name="email" autocomplete="off"></p>
        <p><input type="password" placeholder="Password" name="password" autocomplete="off"></p>

        <div class="log_button">
            <input class="all_login" type="submit" name="login" value="ログイン">
        </div>
        <div class="com">
            <p class="new_acount">企業登録の方は下記のボタンをクリック↓</p>

            <div class="acount">
                    <input class="all_account" type="button" onclick="location.href='company_registration.jsp'" value="アカウントを作成する">
                     <input class="all_account" type="button" onclick="location.href='../user/index.jsp'" value="top">
            </div>
        </div>

    </div>
    </section>
</form>

</body>
</html>

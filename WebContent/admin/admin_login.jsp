<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../com_admin_header.jsp"%>
	<head>
	    <title>Admin Login</title>
	    <link rel="stylesheet" href="../assets/css/sanitize.css">
	</head>
	<style>
	.contener{
		transform: translate(0px, 25%);
	}
	.login_title{
		color: white;
	}
		.vh-100{
		height: 800px;
		}
</style>

<body>
<form action="Login.action" method="post" class="login-container" >
<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">
	<div class="contener">
	    <h2 class="login_title">Admin Login Page</h2>
	    <div class="login" >
	        <div class="login-triangle"></div>
	        <p><input type="email" placeholder="Email" name="inq_admin_email" autocomplete="off"></p>
	        <p><input type="password" placeholder="Password" name="inq_admin_pass" autocomplete="off"></p>
	        <div class="log_button">
	            <input class="all_login" type="submit" name="login" value="ログイン">
	            <a  href="../user/index.jsp"><input class="all_login" src="" type="button" name="login" value="TOP"></a>
	        </div>

	    </div>
    </div>
    </section>
</form>


<!-- <form action="Login.action" method="post" class="login-container">
<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">
    <h2 class="login_title">Admin Login Page</h2>
    <div class="login">
        <div class="login-triangle"></div>

        <p><input type="email" placeholder="Email" name="inq_admin_email"></p>
        <p><input type="password" placeholder="Password" name="inq_admin_pass"></p>

        <div class="log_button">
            <input class="all_login" type="submit" name="login" value="ログイン">
        </div>
    </div>
    </section>
</form>
 --></body>
</html>
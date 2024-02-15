<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../menu.jsp"%>
<html>
<head>
    <title>login_error</title>

</head>
<style>
.log-error{
	text-align: center;
}
.log_error_container{
	text-align: center;
    background-color: white;
    width: 33%;
    margin: 7% auto;
    padding: 2% 0%;
    border-radius: 35px;
}
.log_error{
	color: red;
    font-size: 400%;
    margin-bottom: 7%;
}

.error-mark{
	width: 15%;
}
.error_message p{
	font-size: 200%;
	margin-top: 8%;
}
a.sending {
	display: flex;
    justify-content: space-evenly;
    align-items: center;
    text-align: center;
    text-decoration: none;
    width: 220px;
    margin: auto;
    padding: 1rem 4rem 1rem 3rem;
    font-weight: bold;
    background: #198754;
    color: #fff;
    border-radius: 100vh;
    position: relative;
    transition: 0.3s;
    border: solid;

}
a.sending::before {
	content: '';
	width: 7px;
	height: 7px;
	border-top: 2px solid #fff;
	border-right: 2px solid #fff;
	transform: rotate(45deg);
}
a.sending:hover {
	background: #fff;
	color: #000000;
}
.inq_sending{
	margin-top: 7%;
}

</style>
<body>
    <%
        boolean loginFailed = true;
    %>


<form action="com_login.jsp" method="post">
<div class="log-error">
	<div class="log_error_container">
		<h1 class="log_error">ログインエラー</h1>
		<div class="error_message">
			<img class="error-mark" alt="エラーマーク" src="https://upload.wikimedia.org/wikipedia/commons/3/34/ErrorMessage.png">
			<p>ログインをしてください！</p>
		</div>

		<div class="inq_sending">
			<a class="sending" type="submit" href="../user/user_login.jsp">ログイン</a>
		</div>
	</div>
</div>
</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../menu.jsp"%>

<style>
h1{
	color: white;
	text-alight: center;
}
h2{
	color: white;
	text-alight: center;
}
.inq_sending{
	padding-top: 10%;
    text-align: center;
    margin-bottom: 10%;
}

input.sending{
	width: 7%;
	padding: 0.5%;
	margin-left: 1%;
	background-color: red;
	color: #fff;
}

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
.error-inq_sending{
	margin-top: 7%;
}


</style>
<c:choose>
	<c:when test="${user==null}">
	<form action="user_login.jsp" method="post">
		<div class="log-error">
			<div class="log_error_container">
				<h1 class="log_error">ログインエラー</h1>
				<div class="error_message">
					<img class="error-mark" alt="エラーマーク" src="https://upload.wikimedia.org/wikipedia/commons/3/34/ErrorMessage.png">
					<p>ログインをしてください！</p>
				</div>

				<div class="error-inq_sending">
					<a class="sending" type="submit" href="../user/user_login.jsp">ログイン</a>
				</div>
			</div>
		</div>
	</form>

	</c:when>
	<c:otherwise>
	<form action="Deregi.action">
		<div class="inq_sending">
			<h1>登録解除したい場合はこちらをクリック</h1>
			<h2>↓</h2>
				<input class="sending" type="submit" value="登録解除">
		</div>
	</form>
	</c:otherwise>
</c:choose>
<%@include file="../footer.jsp"%>

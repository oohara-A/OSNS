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
	padding-top: 100px;
	text-align: center;
}

input.sending{
	width: 7%;
	padding: 0.5%;
	margin-left: 1%;
	background-color: red;
	color: #fff;
}

</style>
<c:choose>
	<c:when test="${user==null}">
	<div class="inq_sending">
		<h1>ログインしてください</h1>
				<a href="ueser_login.jsp"><input class="sending" type="submit" value="ログイン"></a>
			</div>

	</c:when>
	<c:otherwise>
	<form action="Deregi.action">
		<div class="inq_sending">
			<h1>登録解除したい場合のボタンをクリック</h1>
			<h2>↓</h2>
				<input class="sending" type="submit" value="登録解除">
		</div>
	</form>
	</c:otherwise>
</c:choose>
<%@include file="../footer.jsp"%>

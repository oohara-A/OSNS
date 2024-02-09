<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="../menu.jsp"%>

<style>
h1{
	color: white;
}
	.inq_sending{
		padding-top: 100px;
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
			<h1>登録解除したい場合↓のボタンをクリック</h1>
				<input class="sending" type="submit" value="登録解除">
		</div>
	</form>
	</c:otherwise>
</c:choose>
<%@include file="../footer.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../menu.jsp"%>

<style>
.buy_completion{
	margin-top: 6%;
    text-align: center;
}

img{
	margin-bottom: 3%;
}
h1{
	color: white;
	font-size: 320%;
	margin-bottom: 2%;
}
.top{
	font-size: 190%;
}

p{
	font-size: 100%;
}
</style>


<div class="buy_completion">
	<hr>
	<h1>ありがとうございます！購入が完了しました。</h1>
	<div>
	  <a class="top" href="../user/index.jsp">
	  	<img alt="810" src="../assets/image/Ecommerce Shopping LogoC.png" >
	  </a>
	</div>

</div>

<%@include file="../footer.jsp" %>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>kouka_web</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap Icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<!-- SimpleLightbox plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->


<meta name="description"
	content="sampie text sampie textsampie textsampie textsampie textsampie textsampie textsampie textsampie text">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/sanitize.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/common.css">
</head>

<%-- 	<h1 class="header-logo">OharaSampleNetShop</h1>

	<nav class="header-menu">
		<ul class="header-list">
			<li class="head"><a href="../user/index.jsp">OharaSampleNetShop</a></li>
			<li class="head"><a href="../user/account.jsp">アカウント</a></li>
			<li class="head"><a href="user_login.jsp">ログイン</a></li>
			<li class="head"><a href="Purchasedisp.action?id=<%=user_id%>">注文履歴</a></li>
		</ul>
	</nav>
 --%>
<style>
a:visited {
 color: #551A8B;
 text-decoration: underline;
}
a:active {
 color: #FF0000;
 text-decoration: underline;
}

body {
background-color: #9d9087;
	/* fallback for old browsers */
/* background: #84fab0; */

/* Chrome 10-25, Safari 5.1-6 */
/* background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));
 */
/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
/* background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
 */}


</style>
<body>
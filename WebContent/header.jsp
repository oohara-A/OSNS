<!DOCTYPE html>
<%@page import="java.util.ArrayList" %>
<%@page import="bean.User" %>
<%@page import="java.util.List" %>
			<html>

			<head>
				<meta charset="UTF-8">
				<meta http-equiv="X-UA-Compatible" content="IE=edge">
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<title>kouka_web</title>
				<meta name="description"
					content="sampie text sampie textsampie textsampie textsampie textsampie textsampie textsampie textsampie text">
				<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet">
				<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
				<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/common.css">
				<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
			</head>
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<%
			//セッションの情報を取得
				User user=null;
				user=(User)session.getAttribute("user");
				int user_id=0;
				if(user != null){
					user_id=user.getId();
				}
			%>

					<header class="header">

						<h1 class="header-logo">OharaSampleNetShop</h1>

						<nav class="header-menu">
							<ul class="header-list">
								<li class="head"><a href="../user/index.jsp">OharaSampleNetShop</a></li>
								<li class="head"><a href="../user/account.jsp">アカウント</a></li>
								<li class="head"><a href="user_login.jsp">ログイン</a></li>
								<li class="head"><a href="Purchasedisp.action?id=<%=user_id%>">注文履歴</a></li>
							</ul>
						</nav>
					</header>

					<body>
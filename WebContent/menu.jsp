<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../header.jsp"%>
<%
//セッションの情報を取得
	User user = null;
	user = (User)session.getAttribute("user");
	int user_id = 0;
	if(user != null){
		user_id = user.getId();
	}
%>

 <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="../user/index.jsp">OharaSampleNetShop</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                    <li class="nav-item">
                        	<form action="ProSearch.action">
								<div class="menu-item">
									<input	class="nav-linkt type="text" placeholder="キーワード" name="keyword">
									<button type="submit">検索</button>
								</div>
							</form>
						</li>
                        <li class="nav-item"><a class="nav-link" href="../user/account.jsp">アカウント</a></li>
                        <li class="nav-item"><a class="nav-link" href="../user/user_login.jsp">ログイン</a></li>
                        <li class="nav-item"><a class="nav-link" href="../user/Purchasedisp.action?id=<%=user_id%>">注文履歴</a></li>
                        <li class="nav-item"><a class="nav-link" href="../user/Cartdisp.action?id=<%=user_id%>">カート</a></li>
                        <li class="nav-item"><a class="nav-link" href="../user/Messagviewg.action?id=<%=user_id %>">🔔</a></li>

                    </ul>
                </div>
            </div>
        </nav>

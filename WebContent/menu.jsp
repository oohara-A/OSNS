<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.jsp"%>

<style>
.navbar-brand{
font-size: 178%;
}

</style>

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
                         <c:choose>
							<c:when test="${user==null}">
                        		<li class="nav-item"><a class="nav-link" href="../user/user_login.jsp">ログイン</a></li>
                        	</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link" href="../user/user_login.jsp">ログアウト</a></li>
							</c:otherwise>
							</c:choose>
                        <li class="nav-item"><a class="nav-link" href="../user/Purchasedisp.action?id=<%=user_id%>">注文履歴</a></li>
                        <li class="nav-item"><a class="nav-link"  href="../user/Cartdisp.action?id=<%=user_id%>">カート</a></li>
                        <li class="nav-item"><a class="nav-link" href="../user/Messagviewg.action?id=<%=user_id %>">🔔</a></li>

                    </ul>
                </div>
            </div>
        </nav>
    <script>
    /*!
    * Start Bootstrap - Creative v7.0.7 (https://startbootstrap.com/theme/creative)
    * Copyright 2013-2023 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-creative/blob/master/LICENSE)
    */
    //
    // Scripts
    //
    document.addEventListener('DOMContentLoaded', function() {
        const navbarToggler = document.querySelector('.navbar-toggler');
        const navbarResponsive = document.querySelector('#navbarResponsive');

        // ナビゲーションバーのトグルボタンがクリックされたときに実行する関数
        function toggleNavbar() {
            navbarResponsive.classList.toggle('show');
        }

        // トグルボタンにクリックイベントを追加
        navbarToggler.addEventListener('click', toggleNavbar);

        // ナビゲーションリンクがクリックされたときに、ナビゲーションバーを閉じる
        const navLinks = navbarResponsive.querySelectorAll('.nav-link');
        navLinks.forEach(link => {
            link.addEventListener('click', toggleNavbar);
        });
    });

    window.addEventListener('DOMContentLoaded', event => {

        // Navbar shrink function
        var navbarShrink = function () {
            const navbarCollapsible = document.body.querySelector('#mainNav');
            if (!navbarCollapsible) {
                return;
            }
            if (window.scrollY === 0) {
                navbarCollapsible.classList.remove('navbar-shrink')
            } else {
                navbarCollapsible.classList.add('navbar-shrink')
            }

        };

        // Shrink the navbar
        navbarShrink();

        // Shrink the navbar when page is scrolled
        document.addEventListener('scroll', navbarShrink);

        // Activate Bootstrap scrollspy on the main nav element
        const mainNav = document.body.querySelector('#mainNav');
        if (mainNav) {
            new bootstrap.ScrollSpy(document.body, {
                target: '#mainNav',
                rootMargin: '0px 0px -40%',
            });
        };

        // Collapse responsive navbar when toggler is visible
        const navbarToggler = document.body.querySelector('.navbar-toggler');
        const responsiveNavItems = [].slice.call(
            document.querySelectorAll('#navbarResponsive .nav-link')
        );
        responsiveNavItems.map(function (responsiveNavItem) {
            responsiveNavItem.addEventListener('click', () => {
                if (window.getComputedStyle(navbarToggler).display !== 'none') {
                    navbarToggler.click();
                }
            });
        });

        // Activate SimpleLightbox plugin for portfolio items
        new SimpleLightbox({
            elements: '#portfolio a.portfolio-box'
        });

    });

</script>

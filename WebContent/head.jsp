<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.vh-100{
	transform: translate(0px, -70px);
}
</style>
 <!-- Masthead-->
<header class="masthead">
<section class="vh-100 bg-image"
  style="background-image: url('../assets/image/bg-masthead.jpg;">

    <div class="container px-4 px-lg-5 h-100">
        <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
            <div class="col-lg-8 align-self-end">
                <h1 class="text-white font-weight-bold">OharaSampleNetShop</h1>
                <hr class="divider" />
            </div>
            <div class="col-lg-8 align-self-baseline">
                <p class="text-white-75 mb-5">ようこそ！！お待ちしておりました。!<br>Lets Shopping!!</p>
                <c:choose>
					<c:when test="${user==null}">
                	<a class="btn btn-primary btn-xl" href="user_login.jsp">log in</a>
                </c:when>
				<c:otherwise>
					<a class="btn btn-primary btn-xl" href="user_login.jsp">log out</a>
				</c:otherwise>
				</c:choose>


            </div>
        </div>
    </div>
    </section>
</header>


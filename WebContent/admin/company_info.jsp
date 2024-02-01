<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>

<head>
	<title>admin_page</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
</head>
	<div class="back_home">
        <a class="backhome" href="admin.jsp">ホームに戻る</a>
	</div>
<form action="Showcompany.action" method="post">
<div class="coupon-list">

    <h2 class="com_info">企業情報一覧</h2>

    <div class="search-container">
        <label for="search">企業検索:</label>
        <input type="text" id="search" name="search" placeholder="企業名を入力">
        <button type="submit" class="pro_search">検索</button>
    </div>

    <table border="1">
        <thead>
            <tr>
                <th>企業名</th>
                <th>メールアドレス</th>
                <th>登録日時</th>
            </tr>
        </thead>

        <tbody>
        	<c:forEach var="c" items="${companyList}">
                <tr>
                    <td>${c.company_name}</td>
                    <td>${c.email}</td>
                    <td>${c.adding_time}</td>
                </tr>
             </c:forEach>
        </tbody>

    </table>
</div>

</form>
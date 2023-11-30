<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../menu.jsp" %>

<div class="coupon-list">
    <h2>クーポン一覧</h2>

    <table border="1">
        <thead>
            <tr>
                <th>クーポン名</th>
                <th>クーポンコード</th>
                <th>発行数</th>
                <th>割引率</th>
            </tr>
        </thead>
        <tbody>
            <!-- Iterate over the list of coupons and display each one -->
            <c:forEach var="coupon" items="${coupons}">
                <tr>
                    <td>${coupon.couponName}</td>
                    <td>${coupon.couponCode}</td>
                    <td>${coupon.issueNumber}</td>
                    <td>${coupon.discountRate}%</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="../footer.jsp" %>
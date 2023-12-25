<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../menu.jsp" %>
<%@ page import="java.util.ArrayList"%>

<%
ArrayList<String> couponList = (ArrayList<String>)session.getAttribute("coupon_list");
%>

<form action="company_top.jsp" method="post">

>>>>>>> 69dea079de001152180afc907db1978b275e73a6


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

<<<<<<< HEAD
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</div>
=======
        <tbody>
        	<c:forEach var="item" items="${couponList}">

                <tr>
                    <td><c:out value="${item.coupon_name}" /></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
             </c:forEach>
        </tbody>
    </table>
</div>
>>>>>>> 69dea079de001152180afc907db1978b275e73a6

</form>

<%@ include file="../footer.jsp"%>
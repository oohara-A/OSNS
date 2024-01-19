<%@page import="bean.Company"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../com_header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
Company com = null;
  com = (Company)session.getAttribute("company_info");
  String name = com.getName();
  String com_name = com.getCompany_name();
  String address =  com.getAddress();
  String email = com.getEmail();
  String phon = com.getPhone_number();
  String password = com.getPassword();
  int id = com.getId();

%>
<form action="Edit_comp_info.action" method="post">
	<div class="com_title">
		<h2 class="info._edit">企業情報編集</h2>
	</div>
<c:forEach var="com" items="company_info">
<input type="hidden" name="com_id" value="<%=id%>">
	<div class="com_full_name">
		<p class="com_info">氏名</p>
		<input type="text" name="name" value="<%=name%>">
	</div>

	<div class="com_name">
		<p class="com_info">企業名</p>
		<input type="text" name="company_name"  value="<%=com_name%>">
	</div>

	<div class="com_address">
		<p class="com_info">所在地</p>
		<input type="text" name="address"  value="<%=address%>">
	</div>

	<div class="com_email">
		<p class="com_info">メールアドレス</p>
		<input type="email" name="email"  value="<%=email%>">
	</div>

	<div class="com_mobile">
		<p class="com_info">携帯電話番号</p>
		<input type="tel" name="phone_number"  value="<%=phon%>">
	</div>

	<div class="com_password">
		<p class="com_info">パスワード</p>
		<input type="password" name="password"  value="<%=password%>">
	</div>

	<div class="next_com_password">
		<p class="com_info">もう一度パスワード</p>
		<input type="password" name="password2" value="<%=password%>">
	</div>
</c:forEach>
	<div class="reg_button">
		<input class="regbutton" type="submit" name="ed_complete" value="編集を完了">
	</div>

</form>
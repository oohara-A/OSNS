<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList"%>
<%@page import="bean.Company"%>
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

<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">

	<title>company_page</title>
</head>

<style>
.com_info_main{
 	transform: translate(40% ,0%);
}
.info_edit{
	font-size: 60px;
    color: #333;
    margin-bottom: 20px;
    margin-left: 100px;
    text-decoration: underline;
    text-decoration-color: #ff0000;
}


.com_complete{
	margin-left: 290px;
}

</style>

<div class="back_home">
        <a class="backhome" href="company_top_page.jsp">HOME</a>
</div>
<h2 class="info_edit">企業情報編集</h2>

<form action="Edit_comp_info.action" method="post">
	<c:forEach var="com" items="company_info">
		<input type="hidden" name="com_id" value="<%=id%>">
		<div class="com_info_main">
			<div class ="comed_info">
		  		<p class="com_info">氏名</p>
		  		<input type="text" name="name" value="<%=name%>">
			</div>

			<div class="comed_info">
		  		<p class="com_info">企業名</p>
		  		<input type="text" name="company_name" value="<%=com_name%>">
			</div>

			<div class="comed_info">
		  		<p class="com_info">所在地</p>
		  		<input type="text" name="address"value="<%=address%>">
			</div>

			<div class="comed_info">
		  		<p class="com_info">メールアドレス</p>
		  		<input type="email" name="email"value="<%=email%>">
			</div>

			<div class="comed_info">
		  		<p class="com_info">携帯電話番号</p>
		  		<input  type="text" name="phone_number"value="<%=phon%>">
			</div>

			<div class="comed_info">
		  		<p class="com_info">パスワード</p>
		  		<input  type="password" name="password"value="<%=password%>">
			</div>

			<div class="comed_info">
		  		<p class="com_info">もう一度パスワード</p>
		  		<input type="password" name="password2"value="<%=password%>">
			</div>

			<div class="complete">
		  		<input class="com_complete" type="submit" name="ed_complete" value="編集を完了">
			</div>
		</div>
	</c:forEach>
</form>

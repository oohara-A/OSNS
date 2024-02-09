<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../admin_header.jsp"%>

<div class="back_home">
		<a href="admin.jsp"><input class="backhome" type="submit" value="ホームに戻る"></a>
</div>
<form action="Remove.action" method="post">



	<h2 class="admin_title">管理者を削除</h2>


	<div class="inq_sending">
		<input class="sending" type="submit" value="削除する">
	</div>

</form>

<%@ include file="../footer.jsp"%>

<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><%@ include file="../com_header.jsp" %>

<head>
	<title>company_login</title>
	<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="company_top_page.jsp" method="post">
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../menu.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

<div class="detele">

	<div class="back_home">
		<input class="backhome" type="submit" href="../css/company_top_page" value="ホームに戻る">
	</div>

	<h2 class="product_title">企業登録解除</h2>


	<div class="confirmation">
		<p class="deregistration">●登録解除の確認について</p>
	</div>

	<p class="release_detail">登録解除を行うと登録済みの企業情報や商品内容・クーポン
		内容など、すべての情報が削除されます。 登録解除を実行する場合は「マイページ内の情報削除に同意 する」にチェックを入れて「登録を解除する」
		ボタンを押してください。</p>

	<div class="delete_teble">
		<div class="agr_detail">
			<input type="checkbox" name="agr_detail" class="checkbox">
			<p class="agr">マイページ内の内容に同意する</p>
		</div>
	</div>

	<div class="release_signup">
<<<<<<< HEAD
        <input class="release" type="submit" name="deregistration" value="登録を解除する" >
    </div>

</div>

</form>
=======
		<input class="release" type="submit" value="登録を解除する">
	</div>

</div>

<%@ include file="../footer.jsp"%>
>>>>>>> f5f4f59a51d2788a7dc7f63bd9c6f7876b3a3337

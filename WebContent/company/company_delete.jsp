<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><%@ include file="../com_header.jsp" %>
<style>

.com_deregistration {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    margin-top: 10%;
}

.release_detail {
    margin: 0 auto;
    padding: 1%;
    max-width: 740px;
    font-style: normal;
    font-size: 25px;
}

input.checkbox{
	padding: 1%;
}

</style>

<head>
	<title>company_login</title>
	<link rel="stylesheet" href="../assets/css/sanitize.css">
</head>

<form action="company_top_page.jsp" method="post">

	<div class="back_home">
            <a class="backhome" href="company_top_page.jsp">ホームに戻る</a>
    </div>

<div class="com_deregistration">

	<h2 class="product_title">企業登録解除</h2>

	<div class="confirmation">
		<p class="deregistration">●登録解除の確認について</p>
	</div>

	<p class="release_detail">
	登録解除を行うと登録済みの企業情報や商品情報・クーポン
	情報など、すべての情報が削除されます。
	登録解除を実行する場合は「マイページ内の情報削除に同意
	する」にチェックを入れて「登録を解除する」
	ボタンを押してください。
	</p>

	<div class="delete_teble">
		<div class="agr_detail">
    		<input type="checkbox" name="agr_detail" class="checkbox">
    		マイページ内の内容に同意する
		</div>
	</div>

	<div class="release_signup">
        <input class="release" type="submit" name="deregistration" value="登録を解除する" >
    </div>

</div>

</form>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

    <h2>企業用お問い合わせフォーム</h2>
    <form action="registered.jsp" method="post">
        <table>
            <tr><th>お名前</th><td><input type="text" name="name"></td></tr>
            <tr><th>企業名</th><td><input type="text" name="com_name"></td></tr>
            <tr><th>部署名</th><td><input type="text" name="div_name"></td></tr>
            <tr><th>役職名</th><td><input type="text" name="job_title"></td></tr>
            <tr><th>メールアドレス</th><td><input type="email" name="email"></td></tr>
            <tr><th>電話番号</th><td><input type="text" name="phone"></td></tr>
            <tr>
                <th>お問い合わせ項目</th>
                <td>
                    <select name="inquiry" id="inquiry">
                        <option value="purchase">商品の販売について</option>
                        <option value="sample">試供品について</option>
                        <option value="review">レビューについて</option>
                        <option value="other">その他</option>
                    </select>
                </td>
            </tr>
            <tr><th>お問い合わせ内容</th><td><textarea name="memo"></textarea></td></tr>
        </table>

        <input type="submit" value="送信" class="button">
    </form>

<%@include file="../footer.jsp" %>
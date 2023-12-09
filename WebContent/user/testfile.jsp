<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../menu.jsp" %>

<form action="Postedreview.action" method="post" enctype="multipart/form-data">
好きな写真:<input type="file" name="part"><br>
<button type="submit" value="送信">送信</button>
</form>

<%@include file="../footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../header.jsp" %>

        <header class="header">
            <nav class="header-nav">
                <ul class="header-navlist">
                    <li class="header-navitem">
                        <!--トップページ  -->
                        <a href="#">OharaSampleNetShop</a>
                    </li>

                    <li class="header-navitem">
                        <!--カテゴリ選択 -->
                        <select>
                            <option>カテゴリ選択</option>
                            <option>本</option>
                            <option>化粧品</option>
                            <option>食料品</option>
                        </select>
                    </li>

                    <li class="header-navitem">
                        <!--お客様のアカウント操作  -->
                        <a href="#">アカウント</a>
                    </li>
                    <li class="header-navitem">
                        <!--注文履歴 -->
                        <a href="#">注文履歴</a>
                    </li>
                    <li class="header-navitem">
                        <!--カートのページ  -->
                        <a href="#">カート</a>
                    </li>
                    <li class="header-navitem">
                        <!--通知  -->
                        <a href="#">🔔</a>
                    </li>
                </ul>
            </nav>
        </header>
        <hr>



<%@include file="../footer.jsp" %>
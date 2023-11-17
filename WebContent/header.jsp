<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kouka_web</title>
    <meta name="description"
        content="sampie text sampie textsampie textsampie textsampie textsampie textsampie textsampie textsampie text">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/sanitize.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/common.css">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
</head>

<header class="header">

    <h1 class="header-logo">
        OharaSampleNetShop
    </h1>

    <div class="nav">詳細
        <input id="drawer_input" class="drawer_hidden" type="checkbox">
        <label for="drawer_input" class="drawer_open"><span></span></label>
        <nav class="nav_content">
            <ul class="nav_list">
                <li class="nav_item"><a href="#">ブランド名</a></li>
                <li class="nav_item"><a href="#">1000～3000円</a></li>
                <li class="nav_item"><a href="#">試供品</a></li>
            </ul>
        </nav>
    </div>

</header>

<body>
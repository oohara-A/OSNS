<!DOCTYPE html>
<html>
<head>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>kouka_web</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

<!-- Bootstrap Icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />

<!-- SimpleLightbox plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet" />

<link href="<%=request.getContextPath() %>/assets/css/toppage.css" rel="stylesheet" />
<meta name="description" content="sampie text sampie textsampie textsampie textsampie textsampie textsampie textsampie textsampie text" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/common.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/list.css" />

</head>

<style>
a:visited {
 color: #551A8B;
 text-decoration: underline;
}
a:active {
 color: #FF0000;
 text-decoration: underline;
}

body {
background-color: #9d9087;
 }


</style>
<body>

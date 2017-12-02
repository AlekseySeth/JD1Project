<%--
  Created by a.shestovsky
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Account</title>
    <style>
        <%@include file="../css/main.css"%>
        <%@include file="../css/reset.css"%>
        <%@include file="../css/header.css"%>
        <%@include file="../css/footer.css"%>
    </style>
    <%--<script type="text/javascript">--%>
        <%--<%@include file="../js/bootstrap.js"%>--%>
    <%--</script>--%>
</head>
    <body>
    <div class="wrapper">
        <%@include file="header.jsp"%>
        <div class="main">
            <div class="left-navigation-bar">
                <form action="${pageContext.request.contextPath}/users-list">
                    <button class="lnb-button" type="submit">Список пользователей</button>
                </form>
                <form action="${pageContext.request.contextPath}/user">
                    <input type="text" name="userId" placeholder="введите ID пользователя">
                    <button class="find" type="submit">Найти</button>
                </form>
                <form action="${pageContext.request.contextPath}/user">
                    <input type="text" name="userEmail" placeholder="введите e-mail пользователя">
                    <button class="find" type="submit">Найти</button>
                </form>
                <form action="${pageContext.request.contextPath}/products-list">
                    <button class="lnb-button" type="submit">Список продуктов</button>
                </form>
                <form action="${pageContext.request.contextPath}/update-product">
                    <input type="text" placeholder="введите ID продукта">
                    <button class="find" type="submit">Найти</button>
                </form>
                <form action="${pageContext.request.contextPath}/orders-list">
                    <button class="lnb-button" type="submit">Список заказов</button>
                </form>
                <form action="${pageContext.request.contextPath}/update-order">
                    <input type="text" placeholder="введите ID заказа">
                    <button class="find" type="submit">Найти</button>
                </form>
                <form action="${pageContext.request.contextPath}/log-out" class="log-out" method="post">
                    <input type="hidden" name="logOut" value="true">
                    <button class="lnb-button" type="submit">Выйти из аккаунта</button>
                </form>
            </div>
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
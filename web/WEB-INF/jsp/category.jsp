<%--
  Created by a.shestovsky
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Catalog</title>
        <style>
            <%@include file="../css/category.css"%>
            <%@include file="../css/header.css"%>
            <%@include file="../css/footer.css"%>
            <%@include file="../css/reset.css"%>
        </style>
        <%--<script type="text/javascript">--%>
            <%--<%@include file="../js/bootstrap.js"%>--%>
        <%--</script>--%>
    </head>
    <body>
        <div class="wrapper">
            <%@include file="header.jsp"%>
            <div class="main">
                <%@include file="category-tree.jsp"%>
                <div class="top-category">
                    <h2>${requestScope.parentCategory.name} ${requestScope.currentCategory.name}</h2></div>
                <div class="parent-categories">
                    <div>
                        <c:forEach var="product" items="${requestScope.productsCatalog}">
                            <div class="product-item">
                                <a href="${pageContext.request.contextPath}/product?id=${product.id}">
                                <img class="product-image" src="${product.imageURL}" height="100" width="100">
                                <p class="product-name">${product.name}</p>
                                <div class="short-description">
                                    <c:if test="${fn:length(product.description) > 150}">
                                        <p>
                                        ${product.description}
                                        </p>
                                    </c:if>
                                    <c:if test="${fn:length(product.description) < 150}">
                                        <p>
                                        ${product.description}
                                            <c:forEach begin="1" end="130">
                                                &nbsp;
                                            </c:forEach>
                                        </p>
                                    </c:if>
                                </div>
                                <p class="product-price">
                                    ${product.price} руб.
                                </p>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <div class="d-flex justify-content-end">
        <a href="/" class="ms-3 fs-3">Dashboard</a>
    </div>
    <h1 class="mb-3">${producto.name}</h1>
    <div class="d-flex justify-content-between">
        <div>
            <h2 class="mb-3">Tus Categorias son:</h2>
            <c:forEach items="${producto.categories}" var="c">
            <li>${c.name}</l1>
            </c:forEach>
        </div>
        <form:form action="/products/${producto.id}" method="post" modelAttribute="asociacion" class="mt-5">
            <p class="d-flex justify-content-between mx-3">
                <form:input type="hidden" path="product" value="${producto.id}"/>
                <form:label path="category" class="fs-5 me-3">Add Category:</form:label>
                <form:errors path="category" class="text-danger"/>
                <form:select path="category">
                    <c:forEach items="${categorias}" var="c">
                        <form:option value="${c.id}">${c.name}</form:option>
                    </c:forEach>
                </form:select>
            </p>
            <div class="d-flex justify-content-end me-3">
                <input type="submit" value="Add" class="btn btn-primary"/>
            </div>
        </form:form>
    </div>
</div>


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
    <h1 class="mb-3">${categoria.name}</h1>
    <div class="d-flex justify-content-between">
        <div>
            <h2 class="mb-3">Tus Productos son:</h2>
            <c:forEach items="${categoria.products}" var="p">
            <li>${p.name}</l1>
            </c:forEach>
        </div>
        <form:form action="/categories/${categoria.id}" method="post" modelAttribute="enlace" class="mt-5">
            <p class="d-flex justify-content-between mx-3">
                <form:input type="hidden" path="category" value="${categoria.id}"/>
                <form:label path="product" class="fs-5 me-3">Add Producto:</form:label>
                <form:errors path="product" class="text-danger"/>
                <form:select path="product">
                    <c:forEach items="${productos}" var="p">
                        <form:option value="${p.id}">${p.name}</form:option>
                    </c:forEach>
                </form:select>
            </p>
            <div class="d-flex justify-content-end me-3">
                <input type="submit" value="Add" class="btn btn-primary"/>
            </div>
        </form:form>
    </div>
</div>


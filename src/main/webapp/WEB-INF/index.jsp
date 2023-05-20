<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <h1>Bienvenido!</h1>
    <div class="d-flex justify-content-around mb-3">
        <a href="/products/new" class="mt-2">New Product</a>
        <a href="/category/new" class="mt-2">New Category</a>
    </div>
    <div class="d-flex justify-content-between mt-5">
        <div>
            <h2 class="mb-3">Tus productos son:</h2>
            <c:forEach items="${productos}" var="producto">
            <li><a href="/products/${producto.id}">${producto.name}</a></li>
            </c:forEach>
        </div>
        <div>
            <h2 class="mb-3">Tus categorias son:</h2>
            <c:forEach items="${categorias}" var="categoria">
            <li><a href="/categories/${categoria.id}">${categoria.name}</a></li>
            </c:forEach>
        </div>
    </div>
</div>


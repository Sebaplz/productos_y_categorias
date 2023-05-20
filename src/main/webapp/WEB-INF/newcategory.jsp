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
    <h1>New Category</h1>
    <form:form action="/category/new" method="post" modelAttribute="categoria" class="mt-5">
        <p class="d-flex justify-content-end mx-3">
            <form:label path="name" class="fs-5 me-3">Name:</form:label>
            <form:errors path="name" class="text-danger"/>
            <form:input path="name"/>
        </p>
        <div class="d-flex justify-content-end me-3">
            <input type="submit" value="Create" class="btn btn-primary"/>
        </div>
    </form:form>
</div>


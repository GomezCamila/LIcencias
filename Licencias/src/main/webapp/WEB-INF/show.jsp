<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formateo fechas (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- para errores de renderizado en rutas PUT -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AQUI EL TITULO DE TU PLNATILLA</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body>
<br>
	  <div class="container p-3 mb-2 bg-light text-black ">
        <h1 class="mb-4 text-center display-2">
            <c:out value="${personaBuscada.firstName} ${personaBuscada.lastName}" />
        </h1>
        <div class="row justify-content-center">
            <div class="col-3">
                <p class="font-weight-bold fs-4">Numero de Licencia:</p>
                <p><c:out value="${personaBuscada.getLicencia().getNumberComoString()}" /></p>
                <p class="font-weight-bold fs-4">Estado:</p>
                <p><c:out value="${personaBuscada.getLicencia().getState()}" /></p>
                <p class="font-weight-bold fs-4">Fecha de Expiración:</p>
                <p><fmt:formatDate pattern="MM/dd/yyyy" value="${personaBuscada.getLicencia().getExpirationDate()}" /></p>
				<a href="/" class="btn btn-success ">Dashboard</a>
            </div>
		</div>
    </div>


</body>
</html>
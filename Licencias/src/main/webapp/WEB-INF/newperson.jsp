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
<title>NUEVA PERSONA</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body>
 <div class="container">
     <h2>Nueva Persona</h2>
        <form:form action="/persons/new" method="POST" modelAttribute="persona"> 
         
           
           <div class="form-group">Nombre</div>
          <form:label class="form-label" path="firstName"></form:label>
          <form:errors class="text-danger" path="firstName"></form:errors>
          <form:input class="form-control" path="firstName"/>
          <br>
           <div class="form-group">Apellido</div>
          <form:label class="form-label" path="lastName"></form:label>
          <form:errors class="text-danger" path="lastName"></form:errors>
           <form:input class="form-control" path="lastName"/>
           <br>
       <input class="btn btn-primary" type="submit" value="Nueva persona">
         </form:form>
  </div>
 
</body>
</html>
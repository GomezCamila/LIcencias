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
<title>NUEVA LICENCIA</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body>
<div class="container">
     <h2>Nueva Licencia</h2>
        <form:form action="/licencias/new" method="POST" modelAttribute="licencia"> 
         <div class="form-group">         
          <form:select   class="form-control" path="persona">
          <c:forEach items="${personas }" var="p">
          <form:option value="${p.id}">${p.firstName}${p.lastName}</form:option>
          </c:forEach>
          </form:select>
          </div>

          
         
           <div class="form-group">ESTADO:</div>
          <form:label class="form-label" path="state"></form:label>
          <form:errors class="text-danger" path="state"></form:errors>
           <form:input  class="form-control" path="state"/>
           <br>
           <div class="form-group">FECHA DE EXPIRACION:</div>
          <form:label class="form-label" path="expirationDate"></form:label>
          <form:errors class="text-danger" path="expirationDate"></form:errors>
           <form:input type="date" class="form-control" path="expirationDate"/>
           <br>
 <button class="btn btn-success m-3">Crear Licencia</button>
         </form:form>
  </div>
  
  
</body>
</html>
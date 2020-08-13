<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
.form{
	position: absolute;
	top: 20%; /* Buscamos el centro horizontal (relativo) del navegador */
	left: 50%; /* Buscamos el centro vertical (relativo) del navegador */
	width: 300px; /* Definimos el alto del objeto a centrar */
	margin-left:-150px;
	text-align: center
}
.estado{
	width:200px;
	margin-left:50px;
}
.btn{
	width:100px;
	margin-left:0;
}
</style>

<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGIPAB</title>
<%@include  file="Header.jsp" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">		
</head>
<body>

<div class="form">
<form:form action="SaveSillon" cssClass="form-horizontal" method="post" modelAttribute="sillon">

      <!-- need to associate this data with customer id -->
      <form:hidden path="id" />

      <div class="form-group">
       <label for="estado" class="col-md-3 control-label">Estado</label>
       <div class="estado">
        <form:select path="estado" cssClass="form-control">
        	<option value="True">Disponible</option>
      		<option value="False">Ocupado</option>
      	</form:select>
       </div>
      </div>
      
      <div class="form-group">
       <!-- Button -->
       <div class="btn">
        <form:button Class="btn btn-dark">Enviar</form:button>
       </div>
      </div>
      
</form:form>
</div>




</body>
</html>